import 'package:whisky_shop/core/db/app_database.dart';
import 'package:whisky_shop/core/model/exception/other_exception.dart';
import 'package:whisky_shop/core/model/result/result.dart';
import 'package:whisky_shop/features/collection/data/datasources/collection_datasource.dart';
import 'package:whisky_shop/features/collection/data/models/collection_item_detail_model.dart';
import 'package:whisky_shop/features/collection/data/models/models.dart';

class CollectionLocalDataSource implements CollectionLocalDatabaseDataSource {
  const CollectionLocalDataSource({AppDatabase? db}) : _db = db;
  final AppDatabase? _db;

  @override
  Future<Result<Exception, List<CollectionItemModel>>> getItems() async {
    try {
      if (_db != null) {
        final rows = await _db.getAllItems();
        final items = rows
            .map(
              (row) => CollectionItemModel(
                id: row.id,
                name: row.name,
                age: row.age,
                number: row.number,
                imageUrl: row.imageUrl,
              ),
            )
            .toList();
        return Result.success(items);
      }
      return Result.failure(OtherException('Database not initialized'));
    } catch (e) {
      return Result.failure(OtherException(e.toString()));
    }
  }

  @override
  Future<Result<Exception, CollectionItemDetailModel>> getItemDetail(
    String id,
  ) async {
    try {
      if (_db != null) {
        final itemRow = await _db.getItem(id);
        final detailRow = await _db.getDetailItem(id);
        if (itemRow == null || detailRow == null) {
          throw OtherException('Item not found');
        }

        // assemble tasting notes
        final groups = await _db.getGroupsForItem(id, isUserGroup: false);
        final userGroups = await _db.getGroupsForItem(id, isUserGroup: true);
        Future<List<Map<String, dynamic>>> buildGroups(
          List<TastingNoteGroupsTableData> rows,
        ) async {
          final result = <Map<String, dynamic>>[];
          for (final groupData in rows) {
            final notes = await _db.getNotesForGroup(groupData.id);
            result.add({
              'id': groupData.id,
              'name': groupData.name,
              'email': groupData.email,
              'tastingNotes': notes
                  .map(
                    (noteData) => {
                      'id': noteData.id,
                      'title': noteData.title,
                      'description': noteData.description,
                    },
                  )
                  .toList(),
            });
          }
          return result;
        }

        final builtGroups = await buildGroups(groups);
        final builtUserGroups = await buildGroups(userGroups);

        // histories
        final histories = await _db.getHistoriesForItem(id);
        final historiesJson = <Map<String, dynamic>>[];
        for (final historyData in histories) {
          final attachments = await _db.getAttachmentsForHistory(
            historyData.id,
          );
          historiesJson.add({
            'id': historyData.id,
            'title': historyData.title,
            'label': historyData.label,
            'description': historyData.description,
            'attachments': attachments
                .map(
                  (attachmentData) => {
                    'id': attachmentData.id,
                    'url': attachmentData.url,
                    'type': attachmentData.type,
                  },
                )
                .toList(),
          });
        }

        final jsonData = {
          'id': itemRow.id,
          'name': itemRow.name,
          'age': itemRow.age,
          'number': itemRow.number,
          'detail': {
            'distillery': detailRow.distillery,
            'region': detailRow.region,
            'country': detailRow.country,
            'type': detailRow.type,
            'ageStatement': detailRow.ageStatement,
            'filled': detailRow.filled,
            'bottled': detailRow.bottled,
            'caskNumber': detailRow.caskNumber,
            'abv': detailRow.abv,
            'size': detailRow.size,
            'finish': detailRow.finish,
          },
          'tastingNoteGroups': builtGroups,
          'userTastingNoteGroups': builtUserGroups,
          'histories': historiesJson,
        };
        return Result.success(CollectionItemDetailModel.fromJson(jsonData));
      }

      return Result.failure(OtherException('Item not found'));
    } catch (e) {
      return Result.failure(OtherException(e.toString()));
    }
  }

  @override
  Future<Result<Exception, void>> upsertItem(
    CollectionItemDetailModel item,
  ) async {
    try {
      if (_db == null) return const Result.success(null);
      // Convert to a map compatible with DB
      final map = {
        'id': item.id,
        'name': item.name,
        'age': item.age,
        'number': item.number,
        'imageUrl': item.imageUrl,
        'detail': item.detail != null
            ? {
                'distillery': item.detail!.distillery,
                'region': item.detail!.region,
                'country': item.detail!.country,
                'type': item.detail!.type,
                'ageStatement': item.detail!.ageStatement,
                'filled': item.detail!.filled,
                'bottled': item.detail!.bottled,
                'caskNumber': item.detail!.caskNumber,
                'abv': item.detail!.abv,
                'size': item.detail!.size,
                'finish': item.detail!.finish,
              }
            : null,
        'tastingNoteGroups': item.tastingNoteGroups.isNotEmpty
            ? item.tastingNoteGroups
                  .map(
                    (groupData) => {
                      'id': groupData.id,
                      'name': groupData.name,
                      'email': groupData.email,
                      'tastingNotes': groupData.tastingNotes
                          .map(
                            (noteData) => {
                              'id': noteData.id,
                              'title': noteData.title,
                              'description': noteData.description,
                            },
                          )
                          .toList(),
                    },
                  )
                  .toList()
            : [],
        'userTastingNoteGroups': item.userTastingNoteGroups.isNotEmpty
            ? item.userTastingNoteGroups
                  .map(
                    (groupData) => {
                      'id': groupData.id,
                      'name': groupData.name,
                      'email': groupData.email,
                      'tastingNotes': groupData.tastingNotes
                          .map(
                            (noteData) => {
                              'id': noteData.id,
                              'title': noteData.title,
                              'description': noteData.description,
                            },
                          )
                          .toList(),
                    },
                  )
                  .toList()
            : [],
        'histories': item.histories
            .map(
              (historyData) => {
                'id': historyData.id,
                'title': historyData.title,
                'label': historyData.label,
                'description': historyData.description,
                'attachments': historyData.attachments
                    .map(
                      (attachmentData) => {
                        'id': attachmentData.id,
                        'url': attachmentData.url,
                        'type': attachmentData.type.name,
                      },
                    )
                    .toList(),
              },
            )
            .toList(),
      };
      await _db.upsertFullItemFromJson(map);
      return const Result.success(null);
    } catch (e) {
      return Result.failure(OtherException(e.toString()));
    }
  }

  @override
  Future<Result<Exception, void>> upsertItems(
    List<CollectionItemModel> items,
  ) async {
    try {
      if (_db == null || items.isEmpty) return const Result.success(null);
      await _db.upsertItems(
        items
            .map(
              (e) => CollectionItemsCompanion.insert(
                id: e.id,
                name: e.name,
                age: e.age,
                number: e.number,
                imageUrl: e.imageUrl,
              ),
            )
            .toList(),
      );
      return const Result.success(null);
    } catch (e) {
      return Result.failure(OtherException(e.toString()));
    }
  }
}
