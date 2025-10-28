import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

class CollectionItems extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  IntColumn get age => integer()();
  IntColumn get number => integer()();
  TextColumn get imageUrl => text()();
  @override
  Set<Column> get primaryKey => {id};
}

class ItemDetailsTable extends Table {
  // Links to base item id
  TextColumn get id => text()();

  // Domain: ItemDetail fields
  TextColumn get distillery => text()();
  TextColumn get region => text()();
  TextColumn get country => text()();
  TextColumn get type => text()();
  IntColumn get ageStatement => integer()();
  TextColumn get filled => text()();
  TextColumn get bottled => text()();
  TextColumn get caskNumber => text()();
  TextColumn get abv => text()();
  TextColumn get size => text()();
  TextColumn get finish => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class TastingNoteGroupsTable extends Table {
  TextColumn get id => text()();
  TextColumn get itemId => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  BoolColumn get isUserGroup => boolean().withDefault(const Constant(false))();

  @override
  Set<Column> get primaryKey => {id};
}

class TastingNotesTable extends Table {
  TextColumn get id => text()();
  TextColumn get groupId => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class ItemHistoriesTable extends Table {
  TextColumn get id => text()();
  TextColumn get itemId => text()();
  TextColumn get title => text()();
  TextColumn get label => text()();
  TextColumn get description => text()();

  @override
  Set<Column> get primaryKey => {id};
}

class HistoryAttachmentsTable extends Table {
  TextColumn get id => text()();
  TextColumn get historyId => text()();
  TextColumn get url => text()();
  TextColumn get type => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@DriftDatabase(
  tables: [
    CollectionItems,
    ItemDetailsTable,
    TastingNoteGroupsTable,
    TastingNotesTable,
    ItemHistoriesTable,
    HistoryAttachmentsTable,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onUpgrade: (m, from, to) async {
      if (from < 2) {
        await m.createTable(tastingNoteGroupsTable);
        await m.createTable(tastingNotesTable);
        await m.createTable(itemHistoriesTable);
        await m.createTable(historyAttachmentsTable);
      }
    },
  );

  Future<List<CollectionItem>> getAllItems() async {
    final rows = await select(collectionItems).get();
    return rows;
  }

  Future<void> upsertItems(List<CollectionItemsCompanion> items) async {
    await batch((b) {
      b.insertAllOnConflictUpdate(collectionItems, items);
    });
  }

  Future<void> upsertItemsFromJson(List<Map<String, dynamic>> itemsJson) async {
    if (itemsJson.isEmpty) return;
    final companions = itemsJson.map((e) {
      return CollectionItemsCompanion.insert(
        id: e['id'] as String,
        name: e['name'] as String,
        age: (e['age'] as num).toInt(),
        number: (e['number'] as num).toInt(),
        imageUrl: e['imageUrl'] as String,
      );
    }).toList();
    await upsertItems(companions);
  }

  Future<void> upsertDetail({
    required CollectionItemsCompanion item,
    required ItemDetailsTableCompanion detail,
  }) async {
    await transaction(() async {
      await into(collectionItems).insertOnConflictUpdate(item);
      await into(itemDetailsTable).insertOnConflictUpdate(detail);
    });
  }

  /// Convenience: Upsert a single item with its detail from a plain map.
  /// Expected structure:
  /// {
  ///   id, name, age, number,
  ///   detail: {
  ///     distillery, region, country, type, ageStatement, filled, bottled,
  ///     caskNumber, abv, size, finish
  ///   }
  /// }
  Future<void> upsertItemDetailFromJson(Map<String, dynamic> json) async {
    final item = CollectionItemsCompanion.insert(
      id: json['id'] as String,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );

    final d = (json['detail'] as Map<String, dynamic>);
    final detail = ItemDetailsTableCompanion.insert(
      id: json['id'] as String,
      distillery: d['distillery'] as String,
      region: d['region'] as String,
      country: d['country'] as String,
      type: d['type'] as String,
      ageStatement: (d['ageStatement'] as num).toInt(),
      filled: d['filled'] as String,
      bottled: d['bottled'] as String,
      caskNumber: d['caskNumber'] as String,
      abv: d['abv'] as String,
      size: d['size'] as String,
      finish: d['finish'] as String,
    );

    await upsertDetail(item: item, detail: detail);
  }

  /// Upsert the full item tree, replacing existing children
  /// Structure matches CollectionItemDetailModel.fromJson
  Future<void> upsertFullItemFromJson(Map<String, dynamic> json) async {
    final itemId = json['id'] as String;
    final item = CollectionItemsCompanion.insert(
      id: itemId,
      name: json['name'] as String,
      age: (json['age'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
    );

    final detailJson = (json['detail'] as Map<String, dynamic>);
    final detail = ItemDetailsTableCompanion.insert(
      id: itemId,
      distillery: detailJson['distillery'] as String,
      region: detailJson['region'] as String,
      country: detailJson['country'] as String,
      type: detailJson['type'] as String,
      ageStatement: (detailJson['ageStatement'] as num).toInt(),
      filled: detailJson['filled'] as String,
      bottled: detailJson['bottled'] as String,
      caskNumber: detailJson['caskNumber'] as String,
      abv: detailJson['abv'] as String,
      size: detailJson['size'] as String,
      finish: detailJson['finish'] as String,
    );

    await transaction(() async {
      // upsert base item
      await into(collectionItems).insertOnConflictUpdate(item);
      await into(itemDetailsTable).insertOnConflictUpdate(detail);

      // wipe existing children for a full replace
      await _deleteChildrenForItem(itemId);

      // tasting note groups
      final groups = (json['tastingNoteGroups'] as List<dynamic>? ?? [])
          .cast<Map<String, dynamic>>();
      for (final groupJson in groups) {
        final groupId = groupJson['id'] as String;
        final groupCompanion = TastingNoteGroupsTableCompanion.insert(
          id: groupId,
          itemId: itemId,
          name: groupJson['name'] as String,
          email: groupJson['email'] as String,
          isUserGroup: const Value(false),
        );
        await into(
          tastingNoteGroupsTable,
        ).insertOnConflictUpdate(groupCompanion);

        final notes = (groupJson['tastingNotes'] as List<dynamic>? ?? [])
            .cast<Map<String, dynamic>>();
        if (notes.isNotEmpty) {
          await batch((b) {
            b.insertAllOnConflictUpdate(
              tastingNotesTable,
              notes.map(
                (noteJson) => TastingNotesTableCompanion.insert(
                  id: noteJson['id'] as String,
                  groupId: groupId,
                  title: noteJson['title'] as String,
                  description: noteJson['description'] as String,
                ),
              ),
            );
          });
        }
      }

      // my tasting note groups
      final userGroups = (json['userTastingNoteGroups'] as List<dynamic>? ?? [])
          .cast<Map<String, dynamic>>();
      for (final groupJson in userGroups) {
        final groupId = groupJson['id'] as String;
        final groupCompanion = TastingNoteGroupsTableCompanion.insert(
          id: groupId,
          itemId: itemId,
          name: groupJson['name'] as String,
          email: groupJson['email'] as String,
          isUserGroup: const Value(true),
        );
        await into(
          tastingNoteGroupsTable,
        ).insertOnConflictUpdate(groupCompanion);

        final notes = (groupJson['tastingNotes'] as List<dynamic>? ?? [])
            .cast<Map<String, dynamic>>();
        if (notes.isNotEmpty) {
          await batch((batch) {
            batch.insertAllOnConflictUpdate(
              tastingNotesTable,
              notes.map(
                (noteJson) => TastingNotesTableCompanion.insert(
                  id: noteJson['id'] as String,
                  groupId: groupId,
                  title: noteJson['title'] as String,
                  description: noteJson['description'] as String,
                ),
              ),
            );
          });
        }
      }

      // histories and attachments
      final histories = (json['histories'] as List<dynamic>? ?? [])
          .cast<Map<String, dynamic>>();
      for (final historyJson in histories) {
        final historyId = historyJson['id'] as String;
        final historyCompanion = ItemHistoriesTableCompanion.insert(
          id: historyId,
          itemId: itemId,
          title: historyJson['title'] as String,
          label: historyJson['label'] as String,
          description: historyJson['description'] as String,
        );
        await into(itemHistoriesTable).insertOnConflictUpdate(historyCompanion);

        final attachments = (historyJson['attachments'] as List<dynamic>? ?? [])
            .cast<Map<String, dynamic>>();
        if (attachments.isNotEmpty) {
          await batch((batch) {
            batch.insertAllOnConflictUpdate(
              historyAttachmentsTable,
              attachments.map(
                (attachmentJson) => HistoryAttachmentsTableCompanion.insert(
                  id: attachmentJson['id'] as String,
                  historyId: historyId,
                  url: attachmentJson['url'] as String,
                  type: attachmentJson['type'].toString(),
                ),
              ),
            );
          });
        }
      }
    });
  }

  Future<void> _deleteChildrenForItem(String itemId) async {
    final groupRows = await (select(
      tastingNoteGroupsTable,
    )..where((groupTable) => groupTable.itemId.equals(itemId))).get();
    if (groupRows.isNotEmpty) {
      final groupIds = groupRows.map((groupTable) => groupTable.id).toList();
      await (delete(
        tastingNotesTable,
      )..where((noteTable) => noteTable.groupId.isIn(groupIds))).go();
      await (delete(
        tastingNoteGroupsTable,
      )..where((groupTable) => groupTable.itemId.equals(itemId))).go();
    }

    final historyRows = await (select(
      itemHistoriesTable,
    )..where((historyTable) => historyTable.itemId.equals(itemId))).get();
    if (historyRows.isNotEmpty) {
      final historyIds = historyRows
          .map((historyTable) => historyTable.id)
          .toList();
      await (delete(historyAttachmentsTable)..where(
            (attachmentTable) => attachmentTable.historyId.isIn(historyIds),
          ))
          .go();
      await (delete(
        itemHistoriesTable,
      )..where((historyTable) => historyTable.itemId.equals(itemId))).go();
    }
  }

  Future<CollectionItem?> getItem(String id) async {
    return (select(
      collectionItems,
    )..where((itemTable) => itemTable.id.equals(id))).getSingleOrNull();
  }

  Future<ItemDetailsTableData?> getDetailItem(String id) async {
    return (select(
      itemDetailsTable,
    )..where((detailTable) => detailTable.id.equals(id))).getSingleOrNull();
  }

  Future<List<TastingNoteGroupsTableData>> getGroupsForItem(
    String itemId, {
    required bool isUserGroup,
  }) async {
    return (select(tastingNoteGroupsTable)
          ..where((groupTable) => groupTable.itemId.equals(itemId))
          ..where((groupTable) => groupTable.isUserGroup.equals(isUserGroup)))
        .get();
  }

  Future<List<TastingNotesTableData>> getNotesForGroup(String groupId) async {
    return (select(
      tastingNotesTable,
    )..where((noteTable) => noteTable.groupId.equals(groupId))).get();
  }

  Future<List<ItemHistoriesTableData>> getHistoriesForItem(
    String itemId,
  ) async {
    return (select(
      itemHistoriesTable,
    )..where((historyTable) => historyTable.itemId.equals(itemId))).get();
  }

  Future<List<HistoryAttachmentsTableData>> getAttachmentsForHistory(
    String historyId,
  ) async {
    return (select(historyAttachmentsTable)..where(
          (attachmentTable) => attachmentTable.historyId.equals(historyId),
        ))
        .get();
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File(p.join(dir.path, 'whisky_shop.db'));
    return NativeDatabase.createInBackground(file);
  });
}
