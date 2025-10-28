// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CollectionItemsTable extends CollectionItems
    with TableInfo<$CollectionItemsTable, CollectionItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ageMeta = const VerificationMeta('age');
  @override
  late final GeneratedColumn<int> age = GeneratedColumn<int>(
    'age',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
    'number',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, age, number, imageUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'collection_items';
  @override
  VerificationContext validateIntegrity(
    Insertable<CollectionItem> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('age')) {
      context.handle(
        _ageMeta,
        age.isAcceptableOrUnknown(data['age']!, _ageMeta),
      );
    } else if (isInserting) {
      context.missing(_ageMeta);
    }
    if (data.containsKey('number')) {
      context.handle(
        _numberMeta,
        number.isAcceptableOrUnknown(data['number']!, _numberMeta),
      );
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionItem(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      age: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age'],
      )!,
      number: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}number'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
    );
  }

  @override
  $CollectionItemsTable createAlias(String alias) {
    return $CollectionItemsTable(attachedDatabase, alias);
  }
}

class CollectionItem extends DataClass implements Insertable<CollectionItem> {
  final String id;
  final String name;
  final int age;
  final int number;
  final String imageUrl;
  const CollectionItem({
    required this.id,
    required this.name,
    required this.age,
    required this.number,
    required this.imageUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['age'] = Variable<int>(age);
    map['number'] = Variable<int>(number);
    map['image_url'] = Variable<String>(imageUrl);
    return map;
  }

  CollectionItemsCompanion toCompanion(bool nullToAbsent) {
    return CollectionItemsCompanion(
      id: Value(id),
      name: Value(name),
      age: Value(age),
      number: Value(number),
      imageUrl: Value(imageUrl),
    );
  }

  factory CollectionItem.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CollectionItem(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      age: serializer.fromJson<int>(json['age']),
      number: serializer.fromJson<int>(json['number']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'age': serializer.toJson<int>(age),
      'number': serializer.toJson<int>(number),
      'imageUrl': serializer.toJson<String>(imageUrl),
    };
  }

  CollectionItem copyWith({
    String? id,
    String? name,
    int? age,
    int? number,
    String? imageUrl,
  }) => CollectionItem(
    id: id ?? this.id,
    name: name ?? this.name,
    age: age ?? this.age,
    number: number ?? this.number,
    imageUrl: imageUrl ?? this.imageUrl,
  );
  CollectionItem copyWithCompanion(CollectionItemsCompanion data) {
    return CollectionItem(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      age: data.age.present ? data.age.value : this.age,
      number: data.number.present ? data.number.value : this.number,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CollectionItem(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('number: $number, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, age, number, imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CollectionItem &&
          other.id == this.id &&
          other.name == this.name &&
          other.age == this.age &&
          other.number == this.number &&
          other.imageUrl == this.imageUrl);
}

class CollectionItemsCompanion extends UpdateCompanion<CollectionItem> {
  final Value<String> id;
  final Value<String> name;
  final Value<int> age;
  final Value<int> number;
  final Value<String> imageUrl;
  final Value<int> rowid;
  const CollectionItemsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.age = const Value.absent(),
    this.number = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CollectionItemsCompanion.insert({
    required String id,
    required String name,
    required int age,
    required int number,
    required String imageUrl,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       age = Value(age),
       number = Value(number),
       imageUrl = Value(imageUrl);
  static Insertable<CollectionItem> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<int>? age,
    Expression<int>? number,
    Expression<String>? imageUrl,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (age != null) 'age': age,
      if (number != null) 'number': number,
      if (imageUrl != null) 'image_url': imageUrl,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CollectionItemsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<int>? age,
    Value<int>? number,
    Value<String>? imageUrl,
    Value<int>? rowid,
  }) {
    return CollectionItemsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
      number: number ?? this.number,
      imageUrl: imageUrl ?? this.imageUrl,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (age.present) {
      map['age'] = Variable<int>(age.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionItemsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('age: $age, ')
          ..write('number: $number, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemDetailsTableTable extends ItemDetailsTable
    with TableInfo<$ItemDetailsTableTable, ItemDetailsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemDetailsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _distilleryMeta = const VerificationMeta(
    'distillery',
  );
  @override
  late final GeneratedColumn<String> distillery = GeneratedColumn<String>(
    'distillery',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _regionMeta = const VerificationMeta('region');
  @override
  late final GeneratedColumn<String> region = GeneratedColumn<String>(
    'region',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _countryMeta = const VerificationMeta(
    'country',
  );
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
    'country',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _ageStatementMeta = const VerificationMeta(
    'ageStatement',
  );
  @override
  late final GeneratedColumn<int> ageStatement = GeneratedColumn<int>(
    'age_statement',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _filledMeta = const VerificationMeta('filled');
  @override
  late final GeneratedColumn<String> filled = GeneratedColumn<String>(
    'filled',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _bottledMeta = const VerificationMeta(
    'bottled',
  );
  @override
  late final GeneratedColumn<String> bottled = GeneratedColumn<String>(
    'bottled',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _caskNumberMeta = const VerificationMeta(
    'caskNumber',
  );
  @override
  late final GeneratedColumn<String> caskNumber = GeneratedColumn<String>(
    'cask_number',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<String> abv = GeneratedColumn<String>(
    'abv',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sizeMeta = const VerificationMeta('size');
  @override
  late final GeneratedColumn<String> size = GeneratedColumn<String>(
    'size',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _finishMeta = const VerificationMeta('finish');
  @override
  late final GeneratedColumn<String> finish = GeneratedColumn<String>(
    'finish',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    distillery,
    region,
    country,
    type,
    ageStatement,
    filled,
    bottled,
    caskNumber,
    abv,
    size,
    finish,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_details_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemDetailsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('distillery')) {
      context.handle(
        _distilleryMeta,
        distillery.isAcceptableOrUnknown(data['distillery']!, _distilleryMeta),
      );
    } else if (isInserting) {
      context.missing(_distilleryMeta);
    }
    if (data.containsKey('region')) {
      context.handle(
        _regionMeta,
        region.isAcceptableOrUnknown(data['region']!, _regionMeta),
      );
    } else if (isInserting) {
      context.missing(_regionMeta);
    }
    if (data.containsKey('country')) {
      context.handle(
        _countryMeta,
        country.isAcceptableOrUnknown(data['country']!, _countryMeta),
      );
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('age_statement')) {
      context.handle(
        _ageStatementMeta,
        ageStatement.isAcceptableOrUnknown(
          data['age_statement']!,
          _ageStatementMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_ageStatementMeta);
    }
    if (data.containsKey('filled')) {
      context.handle(
        _filledMeta,
        filled.isAcceptableOrUnknown(data['filled']!, _filledMeta),
      );
    } else if (isInserting) {
      context.missing(_filledMeta);
    }
    if (data.containsKey('bottled')) {
      context.handle(
        _bottledMeta,
        bottled.isAcceptableOrUnknown(data['bottled']!, _bottledMeta),
      );
    } else if (isInserting) {
      context.missing(_bottledMeta);
    }
    if (data.containsKey('cask_number')) {
      context.handle(
        _caskNumberMeta,
        caskNumber.isAcceptableOrUnknown(data['cask_number']!, _caskNumberMeta),
      );
    } else if (isInserting) {
      context.missing(_caskNumberMeta);
    }
    if (data.containsKey('abv')) {
      context.handle(
        _abvMeta,
        abv.isAcceptableOrUnknown(data['abv']!, _abvMeta),
      );
    } else if (isInserting) {
      context.missing(_abvMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
        _sizeMeta,
        size.isAcceptableOrUnknown(data['size']!, _sizeMeta),
      );
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('finish')) {
      context.handle(
        _finishMeta,
        finish.isAcceptableOrUnknown(data['finish']!, _finishMeta),
      );
    } else if (isInserting) {
      context.missing(_finishMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemDetailsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemDetailsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      distillery: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}distillery'],
      )!,
      region: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}region'],
      )!,
      country: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}country'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      ageStatement: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}age_statement'],
      )!,
      filled: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}filled'],
      )!,
      bottled: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}bottled'],
      )!,
      caskNumber: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}cask_number'],
      )!,
      abv: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}abv'],
      )!,
      size: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}size'],
      )!,
      finish: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}finish'],
      )!,
    );
  }

  @override
  $ItemDetailsTableTable createAlias(String alias) {
    return $ItemDetailsTableTable(attachedDatabase, alias);
  }
}

class ItemDetailsTableData extends DataClass
    implements Insertable<ItemDetailsTableData> {
  final String id;
  final String distillery;
  final String region;
  final String country;
  final String type;
  final int ageStatement;
  final String filled;
  final String bottled;
  final String caskNumber;
  final String abv;
  final String size;
  final String finish;
  const ItemDetailsTableData({
    required this.id,
    required this.distillery,
    required this.region,
    required this.country,
    required this.type,
    required this.ageStatement,
    required this.filled,
    required this.bottled,
    required this.caskNumber,
    required this.abv,
    required this.size,
    required this.finish,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['distillery'] = Variable<String>(distillery);
    map['region'] = Variable<String>(region);
    map['country'] = Variable<String>(country);
    map['type'] = Variable<String>(type);
    map['age_statement'] = Variable<int>(ageStatement);
    map['filled'] = Variable<String>(filled);
    map['bottled'] = Variable<String>(bottled);
    map['cask_number'] = Variable<String>(caskNumber);
    map['abv'] = Variable<String>(abv);
    map['size'] = Variable<String>(size);
    map['finish'] = Variable<String>(finish);
    return map;
  }

  ItemDetailsTableCompanion toCompanion(bool nullToAbsent) {
    return ItemDetailsTableCompanion(
      id: Value(id),
      distillery: Value(distillery),
      region: Value(region),
      country: Value(country),
      type: Value(type),
      ageStatement: Value(ageStatement),
      filled: Value(filled),
      bottled: Value(bottled),
      caskNumber: Value(caskNumber),
      abv: Value(abv),
      size: Value(size),
      finish: Value(finish),
    );
  }

  factory ItemDetailsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemDetailsTableData(
      id: serializer.fromJson<String>(json['id']),
      distillery: serializer.fromJson<String>(json['distillery']),
      region: serializer.fromJson<String>(json['region']),
      country: serializer.fromJson<String>(json['country']),
      type: serializer.fromJson<String>(json['type']),
      ageStatement: serializer.fromJson<int>(json['ageStatement']),
      filled: serializer.fromJson<String>(json['filled']),
      bottled: serializer.fromJson<String>(json['bottled']),
      caskNumber: serializer.fromJson<String>(json['caskNumber']),
      abv: serializer.fromJson<String>(json['abv']),
      size: serializer.fromJson<String>(json['size']),
      finish: serializer.fromJson<String>(json['finish']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'distillery': serializer.toJson<String>(distillery),
      'region': serializer.toJson<String>(region),
      'country': serializer.toJson<String>(country),
      'type': serializer.toJson<String>(type),
      'ageStatement': serializer.toJson<int>(ageStatement),
      'filled': serializer.toJson<String>(filled),
      'bottled': serializer.toJson<String>(bottled),
      'caskNumber': serializer.toJson<String>(caskNumber),
      'abv': serializer.toJson<String>(abv),
      'size': serializer.toJson<String>(size),
      'finish': serializer.toJson<String>(finish),
    };
  }

  ItemDetailsTableData copyWith({
    String? id,
    String? distillery,
    String? region,
    String? country,
    String? type,
    int? ageStatement,
    String? filled,
    String? bottled,
    String? caskNumber,
    String? abv,
    String? size,
    String? finish,
  }) => ItemDetailsTableData(
    id: id ?? this.id,
    distillery: distillery ?? this.distillery,
    region: region ?? this.region,
    country: country ?? this.country,
    type: type ?? this.type,
    ageStatement: ageStatement ?? this.ageStatement,
    filled: filled ?? this.filled,
    bottled: bottled ?? this.bottled,
    caskNumber: caskNumber ?? this.caskNumber,
    abv: abv ?? this.abv,
    size: size ?? this.size,
    finish: finish ?? this.finish,
  );
  ItemDetailsTableData copyWithCompanion(ItemDetailsTableCompanion data) {
    return ItemDetailsTableData(
      id: data.id.present ? data.id.value : this.id,
      distillery: data.distillery.present
          ? data.distillery.value
          : this.distillery,
      region: data.region.present ? data.region.value : this.region,
      country: data.country.present ? data.country.value : this.country,
      type: data.type.present ? data.type.value : this.type,
      ageStatement: data.ageStatement.present
          ? data.ageStatement.value
          : this.ageStatement,
      filled: data.filled.present ? data.filled.value : this.filled,
      bottled: data.bottled.present ? data.bottled.value : this.bottled,
      caskNumber: data.caskNumber.present
          ? data.caskNumber.value
          : this.caskNumber,
      abv: data.abv.present ? data.abv.value : this.abv,
      size: data.size.present ? data.size.value : this.size,
      finish: data.finish.present ? data.finish.value : this.finish,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemDetailsTableData(')
          ..write('id: $id, ')
          ..write('distillery: $distillery, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('type: $type, ')
          ..write('ageStatement: $ageStatement, ')
          ..write('filled: $filled, ')
          ..write('bottled: $bottled, ')
          ..write('caskNumber: $caskNumber, ')
          ..write('abv: $abv, ')
          ..write('size: $size, ')
          ..write('finish: $finish')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    distillery,
    region,
    country,
    type,
    ageStatement,
    filled,
    bottled,
    caskNumber,
    abv,
    size,
    finish,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemDetailsTableData &&
          other.id == this.id &&
          other.distillery == this.distillery &&
          other.region == this.region &&
          other.country == this.country &&
          other.type == this.type &&
          other.ageStatement == this.ageStatement &&
          other.filled == this.filled &&
          other.bottled == this.bottled &&
          other.caskNumber == this.caskNumber &&
          other.abv == this.abv &&
          other.size == this.size &&
          other.finish == this.finish);
}

class ItemDetailsTableCompanion extends UpdateCompanion<ItemDetailsTableData> {
  final Value<String> id;
  final Value<String> distillery;
  final Value<String> region;
  final Value<String> country;
  final Value<String> type;
  final Value<int> ageStatement;
  final Value<String> filled;
  final Value<String> bottled;
  final Value<String> caskNumber;
  final Value<String> abv;
  final Value<String> size;
  final Value<String> finish;
  final Value<int> rowid;
  const ItemDetailsTableCompanion({
    this.id = const Value.absent(),
    this.distillery = const Value.absent(),
    this.region = const Value.absent(),
    this.country = const Value.absent(),
    this.type = const Value.absent(),
    this.ageStatement = const Value.absent(),
    this.filled = const Value.absent(),
    this.bottled = const Value.absent(),
    this.caskNumber = const Value.absent(),
    this.abv = const Value.absent(),
    this.size = const Value.absent(),
    this.finish = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemDetailsTableCompanion.insert({
    required String id,
    required String distillery,
    required String region,
    required String country,
    required String type,
    required int ageStatement,
    required String filled,
    required String bottled,
    required String caskNumber,
    required String abv,
    required String size,
    required String finish,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       distillery = Value(distillery),
       region = Value(region),
       country = Value(country),
       type = Value(type),
       ageStatement = Value(ageStatement),
       filled = Value(filled),
       bottled = Value(bottled),
       caskNumber = Value(caskNumber),
       abv = Value(abv),
       size = Value(size),
       finish = Value(finish);
  static Insertable<ItemDetailsTableData> custom({
    Expression<String>? id,
    Expression<String>? distillery,
    Expression<String>? region,
    Expression<String>? country,
    Expression<String>? type,
    Expression<int>? ageStatement,
    Expression<String>? filled,
    Expression<String>? bottled,
    Expression<String>? caskNumber,
    Expression<String>? abv,
    Expression<String>? size,
    Expression<String>? finish,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (distillery != null) 'distillery': distillery,
      if (region != null) 'region': region,
      if (country != null) 'country': country,
      if (type != null) 'type': type,
      if (ageStatement != null) 'age_statement': ageStatement,
      if (filled != null) 'filled': filled,
      if (bottled != null) 'bottled': bottled,
      if (caskNumber != null) 'cask_number': caskNumber,
      if (abv != null) 'abv': abv,
      if (size != null) 'size': size,
      if (finish != null) 'finish': finish,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemDetailsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? distillery,
    Value<String>? region,
    Value<String>? country,
    Value<String>? type,
    Value<int>? ageStatement,
    Value<String>? filled,
    Value<String>? bottled,
    Value<String>? caskNumber,
    Value<String>? abv,
    Value<String>? size,
    Value<String>? finish,
    Value<int>? rowid,
  }) {
    return ItemDetailsTableCompanion(
      id: id ?? this.id,
      distillery: distillery ?? this.distillery,
      region: region ?? this.region,
      country: country ?? this.country,
      type: type ?? this.type,
      ageStatement: ageStatement ?? this.ageStatement,
      filled: filled ?? this.filled,
      bottled: bottled ?? this.bottled,
      caskNumber: caskNumber ?? this.caskNumber,
      abv: abv ?? this.abv,
      size: size ?? this.size,
      finish: finish ?? this.finish,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (distillery.present) {
      map['distillery'] = Variable<String>(distillery.value);
    }
    if (region.present) {
      map['region'] = Variable<String>(region.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (ageStatement.present) {
      map['age_statement'] = Variable<int>(ageStatement.value);
    }
    if (filled.present) {
      map['filled'] = Variable<String>(filled.value);
    }
    if (bottled.present) {
      map['bottled'] = Variable<String>(bottled.value);
    }
    if (caskNumber.present) {
      map['cask_number'] = Variable<String>(caskNumber.value);
    }
    if (abv.present) {
      map['abv'] = Variable<String>(abv.value);
    }
    if (size.present) {
      map['size'] = Variable<String>(size.value);
    }
    if (finish.present) {
      map['finish'] = Variable<String>(finish.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemDetailsTableCompanion(')
          ..write('id: $id, ')
          ..write('distillery: $distillery, ')
          ..write('region: $region, ')
          ..write('country: $country, ')
          ..write('type: $type, ')
          ..write('ageStatement: $ageStatement, ')
          ..write('filled: $filled, ')
          ..write('bottled: $bottled, ')
          ..write('caskNumber: $caskNumber, ')
          ..write('abv: $abv, ')
          ..write('size: $size, ')
          ..write('finish: $finish, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TastingNoteGroupsTableTable extends TastingNoteGroupsTable
    with TableInfo<$TastingNoteGroupsTableTable, TastingNoteGroupsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TastingNoteGroupsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
    'email',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isUserGroupMeta = const VerificationMeta(
    'isUserGroup',
  );
  @override
  late final GeneratedColumn<bool> isUserGroup = GeneratedColumn<bool>(
    'is_user_group',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_user_group" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  List<GeneratedColumn> get $columns => [id, itemId, name, email, isUserGroup];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasting_note_groups_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TastingNoteGroupsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta,
        email.isAcceptableOrUnknown(data['email']!, _emailMeta),
      );
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('is_user_group')) {
      context.handle(
        _isUserGroupMeta,
        isUserGroup.isAcceptableOrUnknown(
          data['is_user_group']!,
          _isUserGroupMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TastingNoteGroupsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TastingNoteGroupsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      email: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}email'],
      )!,
      isUserGroup: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_user_group'],
      )!,
    );
  }

  @override
  $TastingNoteGroupsTableTable createAlias(String alias) {
    return $TastingNoteGroupsTableTable(attachedDatabase, alias);
  }
}

class TastingNoteGroupsTableData extends DataClass
    implements Insertable<TastingNoteGroupsTableData> {
  final String id;
  final String itemId;
  final String name;
  final String email;
  final bool isUserGroup;
  const TastingNoteGroupsTableData({
    required this.id,
    required this.itemId,
    required this.name,
    required this.email,
    required this.isUserGroup,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['item_id'] = Variable<String>(itemId);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['is_user_group'] = Variable<bool>(isUserGroup);
    return map;
  }

  TastingNoteGroupsTableCompanion toCompanion(bool nullToAbsent) {
    return TastingNoteGroupsTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      name: Value(name),
      email: Value(email),
      isUserGroup: Value(isUserGroup),
    );
  }

  factory TastingNoteGroupsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TastingNoteGroupsTableData(
      id: serializer.fromJson<String>(json['id']),
      itemId: serializer.fromJson<String>(json['itemId']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      isUserGroup: serializer.fromJson<bool>(json['isUserGroup']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'itemId': serializer.toJson<String>(itemId),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'isUserGroup': serializer.toJson<bool>(isUserGroup),
    };
  }

  TastingNoteGroupsTableData copyWith({
    String? id,
    String? itemId,
    String? name,
    String? email,
    bool? isUserGroup,
  }) => TastingNoteGroupsTableData(
    id: id ?? this.id,
    itemId: itemId ?? this.itemId,
    name: name ?? this.name,
    email: email ?? this.email,
    isUserGroup: isUserGroup ?? this.isUserGroup,
  );
  TastingNoteGroupsTableData copyWithCompanion(
    TastingNoteGroupsTableCompanion data,
  ) {
    return TastingNoteGroupsTableData(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      name: data.name.present ? data.name.value : this.name,
      email: data.email.present ? data.email.value : this.email,
      isUserGroup: data.isUserGroup.present
          ? data.isUserGroup.value
          : this.isUserGroup,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TastingNoteGroupsTableData(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('isUserGroup: $isUserGroup')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId, name, email, isUserGroup);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TastingNoteGroupsTableData &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.name == this.name &&
          other.email == this.email &&
          other.isUserGroup == this.isUserGroup);
}

class TastingNoteGroupsTableCompanion
    extends UpdateCompanion<TastingNoteGroupsTableData> {
  final Value<String> id;
  final Value<String> itemId;
  final Value<String> name;
  final Value<String> email;
  final Value<bool> isUserGroup;
  final Value<int> rowid;
  const TastingNoteGroupsTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.isUserGroup = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TastingNoteGroupsTableCompanion.insert({
    required String id,
    required String itemId,
    required String name,
    required String email,
    this.isUserGroup = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       itemId = Value(itemId),
       name = Value(name),
       email = Value(email);
  static Insertable<TastingNoteGroupsTableData> custom({
    Expression<String>? id,
    Expression<String>? itemId,
    Expression<String>? name,
    Expression<String>? email,
    Expression<bool>? isUserGroup,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (isUserGroup != null) 'is_user_group': isUserGroup,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TastingNoteGroupsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? itemId,
    Value<String>? name,
    Value<String>? email,
    Value<bool>? isUserGroup,
    Value<int>? rowid,
  }) {
    return TastingNoteGroupsTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      name: name ?? this.name,
      email: email ?? this.email,
      isUserGroup: isUserGroup ?? this.isUserGroup,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (isUserGroup.present) {
      map['is_user_group'] = Variable<bool>(isUserGroup.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TastingNoteGroupsTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('isUserGroup: $isUserGroup, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TastingNotesTableTable extends TastingNotesTable
    with TableInfo<$TastingNotesTableTable, TastingNotesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TastingNotesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _groupIdMeta = const VerificationMeta(
    'groupId',
  );
  @override
  late final GeneratedColumn<String> groupId = GeneratedColumn<String>(
    'group_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, groupId, title, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'tasting_notes_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<TastingNotesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(
        _groupIdMeta,
        groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta),
      );
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TastingNotesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TastingNotesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      groupId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}group_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
    );
  }

  @override
  $TastingNotesTableTable createAlias(String alias) {
    return $TastingNotesTableTable(attachedDatabase, alias);
  }
}

class TastingNotesTableData extends DataClass
    implements Insertable<TastingNotesTableData> {
  final String id;
  final String groupId;
  final String title;
  final String description;
  const TastingNotesTableData({
    required this.id,
    required this.groupId,
    required this.title,
    required this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['group_id'] = Variable<String>(groupId);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    return map;
  }

  TastingNotesTableCompanion toCompanion(bool nullToAbsent) {
    return TastingNotesTableCompanion(
      id: Value(id),
      groupId: Value(groupId),
      title: Value(title),
      description: Value(description),
    );
  }

  factory TastingNotesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TastingNotesTableData(
      id: serializer.fromJson<String>(json['id']),
      groupId: serializer.fromJson<String>(json['groupId']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'groupId': serializer.toJson<String>(groupId),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
    };
  }

  TastingNotesTableData copyWith({
    String? id,
    String? groupId,
    String? title,
    String? description,
  }) => TastingNotesTableData(
    id: id ?? this.id,
    groupId: groupId ?? this.groupId,
    title: title ?? this.title,
    description: description ?? this.description,
  );
  TastingNotesTableData copyWithCompanion(TastingNotesTableCompanion data) {
    return TastingNotesTableData(
      id: data.id.present ? data.id.value : this.id,
      groupId: data.groupId.present ? data.groupId.value : this.groupId,
      title: data.title.present ? data.title.value : this.title,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TastingNotesTableData(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('title: $title, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, groupId, title, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TastingNotesTableData &&
          other.id == this.id &&
          other.groupId == this.groupId &&
          other.title == this.title &&
          other.description == this.description);
}

class TastingNotesTableCompanion
    extends UpdateCompanion<TastingNotesTableData> {
  final Value<String> id;
  final Value<String> groupId;
  final Value<String> title;
  final Value<String> description;
  final Value<int> rowid;
  const TastingNotesTableCompanion({
    this.id = const Value.absent(),
    this.groupId = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TastingNotesTableCompanion.insert({
    required String id,
    required String groupId,
    required String title,
    required String description,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       groupId = Value(groupId),
       title = Value(title),
       description = Value(description);
  static Insertable<TastingNotesTableData> custom({
    Expression<String>? id,
    Expression<String>? groupId,
    Expression<String>? title,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (groupId != null) 'group_id': groupId,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TastingNotesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? groupId,
    Value<String>? title,
    Value<String>? description,
    Value<int>? rowid,
  }) {
    return TastingNotesTableCompanion(
      id: id ?? this.id,
      groupId: groupId ?? this.groupId,
      title: title ?? this.title,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<String>(groupId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TastingNotesTableCompanion(')
          ..write('id: $id, ')
          ..write('groupId: $groupId, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemHistoriesTableTable extends ItemHistoriesTable
    with TableInfo<$ItemHistoriesTableTable, ItemHistoriesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemHistoriesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<String> itemId = GeneratedColumn<String>(
    'item_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, itemId, title, label, description];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_histories_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ItemHistoriesTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(
        _itemIdMeta,
        itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta),
      );
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemHistoriesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemHistoriesTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      itemId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}item_id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
    );
  }

  @override
  $ItemHistoriesTableTable createAlias(String alias) {
    return $ItemHistoriesTableTable(attachedDatabase, alias);
  }
}

class ItemHistoriesTableData extends DataClass
    implements Insertable<ItemHistoriesTableData> {
  final String id;
  final String itemId;
  final String title;
  final String label;
  final String description;
  const ItemHistoriesTableData({
    required this.id,
    required this.itemId,
    required this.title,
    required this.label,
    required this.description,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['item_id'] = Variable<String>(itemId);
    map['title'] = Variable<String>(title);
    map['label'] = Variable<String>(label);
    map['description'] = Variable<String>(description);
    return map;
  }

  ItemHistoriesTableCompanion toCompanion(bool nullToAbsent) {
    return ItemHistoriesTableCompanion(
      id: Value(id),
      itemId: Value(itemId),
      title: Value(title),
      label: Value(label),
      description: Value(description),
    );
  }

  factory ItemHistoriesTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemHistoriesTableData(
      id: serializer.fromJson<String>(json['id']),
      itemId: serializer.fromJson<String>(json['itemId']),
      title: serializer.fromJson<String>(json['title']),
      label: serializer.fromJson<String>(json['label']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'itemId': serializer.toJson<String>(itemId),
      'title': serializer.toJson<String>(title),
      'label': serializer.toJson<String>(label),
      'description': serializer.toJson<String>(description),
    };
  }

  ItemHistoriesTableData copyWith({
    String? id,
    String? itemId,
    String? title,
    String? label,
    String? description,
  }) => ItemHistoriesTableData(
    id: id ?? this.id,
    itemId: itemId ?? this.itemId,
    title: title ?? this.title,
    label: label ?? this.label,
    description: description ?? this.description,
  );
  ItemHistoriesTableData copyWithCompanion(ItemHistoriesTableCompanion data) {
    return ItemHistoriesTableData(
      id: data.id.present ? data.id.value : this.id,
      itemId: data.itemId.present ? data.itemId.value : this.itemId,
      title: data.title.present ? data.title.value : this.title,
      label: data.label.present ? data.label.value : this.label,
      description: data.description.present
          ? data.description.value
          : this.description,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemHistoriesTableData(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('title: $title, ')
          ..write('label: $label, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemId, title, label, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemHistoriesTableData &&
          other.id == this.id &&
          other.itemId == this.itemId &&
          other.title == this.title &&
          other.label == this.label &&
          other.description == this.description);
}

class ItemHistoriesTableCompanion
    extends UpdateCompanion<ItemHistoriesTableData> {
  final Value<String> id;
  final Value<String> itemId;
  final Value<String> title;
  final Value<String> label;
  final Value<String> description;
  final Value<int> rowid;
  const ItemHistoriesTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.title = const Value.absent(),
    this.label = const Value.absent(),
    this.description = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemHistoriesTableCompanion.insert({
    required String id,
    required String itemId,
    required String title,
    required String label,
    required String description,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       itemId = Value(itemId),
       title = Value(title),
       label = Value(label),
       description = Value(description);
  static Insertable<ItemHistoriesTableData> custom({
    Expression<String>? id,
    Expression<String>? itemId,
    Expression<String>? title,
    Expression<String>? label,
    Expression<String>? description,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (title != null) 'title': title,
      if (label != null) 'label': label,
      if (description != null) 'description': description,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemHistoriesTableCompanion copyWith({
    Value<String>? id,
    Value<String>? itemId,
    Value<String>? title,
    Value<String>? label,
    Value<String>? description,
    Value<int>? rowid,
  }) {
    return ItemHistoriesTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      title: title ?? this.title,
      label: label ?? this.label,
      description: description ?? this.description,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<String>(itemId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemHistoriesTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('title: $title, ')
          ..write('label: $label, ')
          ..write('description: $description, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $HistoryAttachmentsTableTable extends HistoryAttachmentsTable
    with TableInfo<$HistoryAttachmentsTableTable, HistoryAttachmentsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HistoryAttachmentsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _historyIdMeta = const VerificationMeta(
    'historyId',
  );
  @override
  late final GeneratedColumn<String> historyId = GeneratedColumn<String>(
    'history_id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _urlMeta = const VerificationMeta('url');
  @override
  late final GeneratedColumn<String> url = GeneratedColumn<String>(
    'url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, historyId, url, type];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'history_attachments_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<HistoryAttachmentsTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('history_id')) {
      context.handle(
        _historyIdMeta,
        historyId.isAcceptableOrUnknown(data['history_id']!, _historyIdMeta),
      );
    } else if (isInserting) {
      context.missing(_historyIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
        _urlMeta,
        url.isAcceptableOrUnknown(data['url']!, _urlMeta),
      );
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  HistoryAttachmentsTableData map(
    Map<String, dynamic> data, {
    String? tablePrefix,
  }) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HistoryAttachmentsTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      historyId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}history_id'],
      )!,
      url: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}url'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
    );
  }

  @override
  $HistoryAttachmentsTableTable createAlias(String alias) {
    return $HistoryAttachmentsTableTable(attachedDatabase, alias);
  }
}

class HistoryAttachmentsTableData extends DataClass
    implements Insertable<HistoryAttachmentsTableData> {
  final String id;
  final String historyId;
  final String url;
  final String type;
  const HistoryAttachmentsTableData({
    required this.id,
    required this.historyId,
    required this.url,
    required this.type,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['history_id'] = Variable<String>(historyId);
    map['url'] = Variable<String>(url);
    map['type'] = Variable<String>(type);
    return map;
  }

  HistoryAttachmentsTableCompanion toCompanion(bool nullToAbsent) {
    return HistoryAttachmentsTableCompanion(
      id: Value(id),
      historyId: Value(historyId),
      url: Value(url),
      type: Value(type),
    );
  }

  factory HistoryAttachmentsTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HistoryAttachmentsTableData(
      id: serializer.fromJson<String>(json['id']),
      historyId: serializer.fromJson<String>(json['historyId']),
      url: serializer.fromJson<String>(json['url']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'historyId': serializer.toJson<String>(historyId),
      'url': serializer.toJson<String>(url),
      'type': serializer.toJson<String>(type),
    };
  }

  HistoryAttachmentsTableData copyWith({
    String? id,
    String? historyId,
    String? url,
    String? type,
  }) => HistoryAttachmentsTableData(
    id: id ?? this.id,
    historyId: historyId ?? this.historyId,
    url: url ?? this.url,
    type: type ?? this.type,
  );
  HistoryAttachmentsTableData copyWithCompanion(
    HistoryAttachmentsTableCompanion data,
  ) {
    return HistoryAttachmentsTableData(
      id: data.id.present ? data.id.value : this.id,
      historyId: data.historyId.present ? data.historyId.value : this.historyId,
      url: data.url.present ? data.url.value : this.url,
      type: data.type.present ? data.type.value : this.type,
    );
  }

  @override
  String toString() {
    return (StringBuffer('HistoryAttachmentsTableData(')
          ..write('id: $id, ')
          ..write('historyId: $historyId, ')
          ..write('url: $url, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, historyId, url, type);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HistoryAttachmentsTableData &&
          other.id == this.id &&
          other.historyId == this.historyId &&
          other.url == this.url &&
          other.type == this.type);
}

class HistoryAttachmentsTableCompanion
    extends UpdateCompanion<HistoryAttachmentsTableData> {
  final Value<String> id;
  final Value<String> historyId;
  final Value<String> url;
  final Value<String> type;
  final Value<int> rowid;
  const HistoryAttachmentsTableCompanion({
    this.id = const Value.absent(),
    this.historyId = const Value.absent(),
    this.url = const Value.absent(),
    this.type = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HistoryAttachmentsTableCompanion.insert({
    required String id,
    required String historyId,
    required String url,
    required String type,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       historyId = Value(historyId),
       url = Value(url),
       type = Value(type);
  static Insertable<HistoryAttachmentsTableData> custom({
    Expression<String>? id,
    Expression<String>? historyId,
    Expression<String>? url,
    Expression<String>? type,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (historyId != null) 'history_id': historyId,
      if (url != null) 'url': url,
      if (type != null) 'type': type,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HistoryAttachmentsTableCompanion copyWith({
    Value<String>? id,
    Value<String>? historyId,
    Value<String>? url,
    Value<String>? type,
    Value<int>? rowid,
  }) {
    return HistoryAttachmentsTableCompanion(
      id: id ?? this.id,
      historyId: historyId ?? this.historyId,
      url: url ?? this.url,
      type: type ?? this.type,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (historyId.present) {
      map['history_id'] = Variable<String>(historyId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HistoryAttachmentsTableCompanion(')
          ..write('id: $id, ')
          ..write('historyId: $historyId, ')
          ..write('url: $url, ')
          ..write('type: $type, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CollectionItemsTable collectionItems = $CollectionItemsTable(
    this,
  );
  late final $ItemDetailsTableTable itemDetailsTable = $ItemDetailsTableTable(
    this,
  );
  late final $TastingNoteGroupsTableTable tastingNoteGroupsTable =
      $TastingNoteGroupsTableTable(this);
  late final $TastingNotesTableTable tastingNotesTable =
      $TastingNotesTableTable(this);
  late final $ItemHistoriesTableTable itemHistoriesTable =
      $ItemHistoriesTableTable(this);
  late final $HistoryAttachmentsTableTable historyAttachmentsTable =
      $HistoryAttachmentsTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    collectionItems,
    itemDetailsTable,
    tastingNoteGroupsTable,
    tastingNotesTable,
    itemHistoriesTable,
    historyAttachmentsTable,
  ];
}

typedef $$CollectionItemsTableCreateCompanionBuilder =
    CollectionItemsCompanion Function({
      required String id,
      required String name,
      required int age,
      required int number,
      required String imageUrl,
      Value<int> rowid,
    });
typedef $$CollectionItemsTableUpdateCompanionBuilder =
    CollectionItemsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<int> age,
      Value<int> number,
      Value<String> imageUrl,
      Value<int> rowid,
    });

class $$CollectionItemsTableFilterComposer
    extends Composer<_$AppDatabase, $CollectionItemsTable> {
  $$CollectionItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CollectionItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $CollectionItemsTable> {
  $$CollectionItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get age => $composableBuilder(
    column: $table.age,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get number => $composableBuilder(
    column: $table.number,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CollectionItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CollectionItemsTable> {
  $$CollectionItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<int> get age =>
      $composableBuilder(column: $table.age, builder: (column) => column);

  GeneratedColumn<int> get number =>
      $composableBuilder(column: $table.number, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);
}

class $$CollectionItemsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CollectionItemsTable,
          CollectionItem,
          $$CollectionItemsTableFilterComposer,
          $$CollectionItemsTableOrderingComposer,
          $$CollectionItemsTableAnnotationComposer,
          $$CollectionItemsTableCreateCompanionBuilder,
          $$CollectionItemsTableUpdateCompanionBuilder,
          (
            CollectionItem,
            BaseReferences<
              _$AppDatabase,
              $CollectionItemsTable,
              CollectionItem
            >,
          ),
          CollectionItem,
          PrefetchHooks Function()
        > {
  $$CollectionItemsTableTableManager(
    _$AppDatabase db,
    $CollectionItemsTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CollectionItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CollectionItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CollectionItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<int> age = const Value.absent(),
                Value<int> number = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CollectionItemsCompanion(
                id: id,
                name: name,
                age: age,
                number: number,
                imageUrl: imageUrl,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required int age,
                required int number,
                required String imageUrl,
                Value<int> rowid = const Value.absent(),
              }) => CollectionItemsCompanion.insert(
                id: id,
                name: name,
                age: age,
                number: number,
                imageUrl: imageUrl,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CollectionItemsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CollectionItemsTable,
      CollectionItem,
      $$CollectionItemsTableFilterComposer,
      $$CollectionItemsTableOrderingComposer,
      $$CollectionItemsTableAnnotationComposer,
      $$CollectionItemsTableCreateCompanionBuilder,
      $$CollectionItemsTableUpdateCompanionBuilder,
      (
        CollectionItem,
        BaseReferences<_$AppDatabase, $CollectionItemsTable, CollectionItem>,
      ),
      CollectionItem,
      PrefetchHooks Function()
    >;
typedef $$ItemDetailsTableTableCreateCompanionBuilder =
    ItemDetailsTableCompanion Function({
      required String id,
      required String distillery,
      required String region,
      required String country,
      required String type,
      required int ageStatement,
      required String filled,
      required String bottled,
      required String caskNumber,
      required String abv,
      required String size,
      required String finish,
      Value<int> rowid,
    });
typedef $$ItemDetailsTableTableUpdateCompanionBuilder =
    ItemDetailsTableCompanion Function({
      Value<String> id,
      Value<String> distillery,
      Value<String> region,
      Value<String> country,
      Value<String> type,
      Value<int> ageStatement,
      Value<String> filled,
      Value<String> bottled,
      Value<String> caskNumber,
      Value<String> abv,
      Value<String> size,
      Value<String> finish,
      Value<int> rowid,
    });

class $$ItemDetailsTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemDetailsTableTable> {
  $$ItemDetailsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filled => $composableBuilder(
    column: $table.filled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get bottled => $composableBuilder(
    column: $table.bottled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get abv => $composableBuilder(
    column: $table.abv,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get finish => $composableBuilder(
    column: $table.finish,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ItemDetailsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemDetailsTableTable> {
  $$ItemDetailsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get region => $composableBuilder(
    column: $table.region,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get country => $composableBuilder(
    column: $table.country,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filled => $composableBuilder(
    column: $table.filled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get bottled => $composableBuilder(
    column: $table.bottled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get abv => $composableBuilder(
    column: $table.abv,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get size => $composableBuilder(
    column: $table.size,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get finish => $composableBuilder(
    column: $table.finish,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ItemDetailsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemDetailsTableTable> {
  $$ItemDetailsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get distillery => $composableBuilder(
    column: $table.distillery,
    builder: (column) => column,
  );

  GeneratedColumn<String> get region =>
      $composableBuilder(column: $table.region, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get ageStatement => $composableBuilder(
    column: $table.ageStatement,
    builder: (column) => column,
  );

  GeneratedColumn<String> get filled =>
      $composableBuilder(column: $table.filled, builder: (column) => column);

  GeneratedColumn<String> get bottled =>
      $composableBuilder(column: $table.bottled, builder: (column) => column);

  GeneratedColumn<String> get caskNumber => $composableBuilder(
    column: $table.caskNumber,
    builder: (column) => column,
  );

  GeneratedColumn<String> get abv =>
      $composableBuilder(column: $table.abv, builder: (column) => column);

  GeneratedColumn<String> get size =>
      $composableBuilder(column: $table.size, builder: (column) => column);

  GeneratedColumn<String> get finish =>
      $composableBuilder(column: $table.finish, builder: (column) => column);
}

class $$ItemDetailsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemDetailsTableTable,
          ItemDetailsTableData,
          $$ItemDetailsTableTableFilterComposer,
          $$ItemDetailsTableTableOrderingComposer,
          $$ItemDetailsTableTableAnnotationComposer,
          $$ItemDetailsTableTableCreateCompanionBuilder,
          $$ItemDetailsTableTableUpdateCompanionBuilder,
          (
            ItemDetailsTableData,
            BaseReferences<
              _$AppDatabase,
              $ItemDetailsTableTable,
              ItemDetailsTableData
            >,
          ),
          ItemDetailsTableData,
          PrefetchHooks Function()
        > {
  $$ItemDetailsTableTableTableManager(
    _$AppDatabase db,
    $ItemDetailsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemDetailsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemDetailsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemDetailsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> distillery = const Value.absent(),
                Value<String> region = const Value.absent(),
                Value<String> country = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> ageStatement = const Value.absent(),
                Value<String> filled = const Value.absent(),
                Value<String> bottled = const Value.absent(),
                Value<String> caskNumber = const Value.absent(),
                Value<String> abv = const Value.absent(),
                Value<String> size = const Value.absent(),
                Value<String> finish = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ItemDetailsTableCompanion(
                id: id,
                distillery: distillery,
                region: region,
                country: country,
                type: type,
                ageStatement: ageStatement,
                filled: filled,
                bottled: bottled,
                caskNumber: caskNumber,
                abv: abv,
                size: size,
                finish: finish,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String distillery,
                required String region,
                required String country,
                required String type,
                required int ageStatement,
                required String filled,
                required String bottled,
                required String caskNumber,
                required String abv,
                required String size,
                required String finish,
                Value<int> rowid = const Value.absent(),
              }) => ItemDetailsTableCompanion.insert(
                id: id,
                distillery: distillery,
                region: region,
                country: country,
                type: type,
                ageStatement: ageStatement,
                filled: filled,
                bottled: bottled,
                caskNumber: caskNumber,
                abv: abv,
                size: size,
                finish: finish,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ItemDetailsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemDetailsTableTable,
      ItemDetailsTableData,
      $$ItemDetailsTableTableFilterComposer,
      $$ItemDetailsTableTableOrderingComposer,
      $$ItemDetailsTableTableAnnotationComposer,
      $$ItemDetailsTableTableCreateCompanionBuilder,
      $$ItemDetailsTableTableUpdateCompanionBuilder,
      (
        ItemDetailsTableData,
        BaseReferences<
          _$AppDatabase,
          $ItemDetailsTableTable,
          ItemDetailsTableData
        >,
      ),
      ItemDetailsTableData,
      PrefetchHooks Function()
    >;
typedef $$TastingNoteGroupsTableTableCreateCompanionBuilder =
    TastingNoteGroupsTableCompanion Function({
      required String id,
      required String itemId,
      required String name,
      required String email,
      Value<bool> isUserGroup,
      Value<int> rowid,
    });
typedef $$TastingNoteGroupsTableTableUpdateCompanionBuilder =
    TastingNoteGroupsTableCompanion Function({
      Value<String> id,
      Value<String> itemId,
      Value<String> name,
      Value<String> email,
      Value<bool> isUserGroup,
      Value<int> rowid,
    });

class $$TastingNoteGroupsTableTableFilterComposer
    extends Composer<_$AppDatabase, $TastingNoteGroupsTableTable> {
  $$TastingNoteGroupsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isUserGroup => $composableBuilder(
    column: $table.isUserGroup,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TastingNoteGroupsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TastingNoteGroupsTableTable> {
  $$TastingNoteGroupsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get email => $composableBuilder(
    column: $table.email,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isUserGroup => $composableBuilder(
    column: $table.isUserGroup,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TastingNoteGroupsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TastingNoteGroupsTableTable> {
  $$TastingNoteGroupsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<bool> get isUserGroup => $composableBuilder(
    column: $table.isUserGroup,
    builder: (column) => column,
  );
}

class $$TastingNoteGroupsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TastingNoteGroupsTableTable,
          TastingNoteGroupsTableData,
          $$TastingNoteGroupsTableTableFilterComposer,
          $$TastingNoteGroupsTableTableOrderingComposer,
          $$TastingNoteGroupsTableTableAnnotationComposer,
          $$TastingNoteGroupsTableTableCreateCompanionBuilder,
          $$TastingNoteGroupsTableTableUpdateCompanionBuilder,
          (
            TastingNoteGroupsTableData,
            BaseReferences<
              _$AppDatabase,
              $TastingNoteGroupsTableTable,
              TastingNoteGroupsTableData
            >,
          ),
          TastingNoteGroupsTableData,
          PrefetchHooks Function()
        > {
  $$TastingNoteGroupsTableTableTableManager(
    _$AppDatabase db,
    $TastingNoteGroupsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TastingNoteGroupsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$TastingNoteGroupsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$TastingNoteGroupsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> itemId = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> email = const Value.absent(),
                Value<bool> isUserGroup = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TastingNoteGroupsTableCompanion(
                id: id,
                itemId: itemId,
                name: name,
                email: email,
                isUserGroup: isUserGroup,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String itemId,
                required String name,
                required String email,
                Value<bool> isUserGroup = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TastingNoteGroupsTableCompanion.insert(
                id: id,
                itemId: itemId,
                name: name,
                email: email,
                isUserGroup: isUserGroup,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TastingNoteGroupsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TastingNoteGroupsTableTable,
      TastingNoteGroupsTableData,
      $$TastingNoteGroupsTableTableFilterComposer,
      $$TastingNoteGroupsTableTableOrderingComposer,
      $$TastingNoteGroupsTableTableAnnotationComposer,
      $$TastingNoteGroupsTableTableCreateCompanionBuilder,
      $$TastingNoteGroupsTableTableUpdateCompanionBuilder,
      (
        TastingNoteGroupsTableData,
        BaseReferences<
          _$AppDatabase,
          $TastingNoteGroupsTableTable,
          TastingNoteGroupsTableData
        >,
      ),
      TastingNoteGroupsTableData,
      PrefetchHooks Function()
    >;
typedef $$TastingNotesTableTableCreateCompanionBuilder =
    TastingNotesTableCompanion Function({
      required String id,
      required String groupId,
      required String title,
      required String description,
      Value<int> rowid,
    });
typedef $$TastingNotesTableTableUpdateCompanionBuilder =
    TastingNotesTableCompanion Function({
      Value<String> id,
      Value<String> groupId,
      Value<String> title,
      Value<String> description,
      Value<int> rowid,
    });

class $$TastingNotesTableTableFilterComposer
    extends Composer<_$AppDatabase, $TastingNotesTableTable> {
  $$TastingNotesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TastingNotesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $TastingNotesTableTable> {
  $$TastingNotesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get groupId => $composableBuilder(
    column: $table.groupId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TastingNotesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $TastingNotesTableTable> {
  $$TastingNotesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get groupId =>
      $composableBuilder(column: $table.groupId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$TastingNotesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TastingNotesTableTable,
          TastingNotesTableData,
          $$TastingNotesTableTableFilterComposer,
          $$TastingNotesTableTableOrderingComposer,
          $$TastingNotesTableTableAnnotationComposer,
          $$TastingNotesTableTableCreateCompanionBuilder,
          $$TastingNotesTableTableUpdateCompanionBuilder,
          (
            TastingNotesTableData,
            BaseReferences<
              _$AppDatabase,
              $TastingNotesTableTable,
              TastingNotesTableData
            >,
          ),
          TastingNotesTableData,
          PrefetchHooks Function()
        > {
  $$TastingNotesTableTableTableManager(
    _$AppDatabase db,
    $TastingNotesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TastingNotesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TastingNotesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TastingNotesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> groupId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => TastingNotesTableCompanion(
                id: id,
                groupId: groupId,
                title: title,
                description: description,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String groupId,
                required String title,
                required String description,
                Value<int> rowid = const Value.absent(),
              }) => TastingNotesTableCompanion.insert(
                id: id,
                groupId: groupId,
                title: title,
                description: description,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TastingNotesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TastingNotesTableTable,
      TastingNotesTableData,
      $$TastingNotesTableTableFilterComposer,
      $$TastingNotesTableTableOrderingComposer,
      $$TastingNotesTableTableAnnotationComposer,
      $$TastingNotesTableTableCreateCompanionBuilder,
      $$TastingNotesTableTableUpdateCompanionBuilder,
      (
        TastingNotesTableData,
        BaseReferences<
          _$AppDatabase,
          $TastingNotesTableTable,
          TastingNotesTableData
        >,
      ),
      TastingNotesTableData,
      PrefetchHooks Function()
    >;
typedef $$ItemHistoriesTableTableCreateCompanionBuilder =
    ItemHistoriesTableCompanion Function({
      required String id,
      required String itemId,
      required String title,
      required String label,
      required String description,
      Value<int> rowid,
    });
typedef $$ItemHistoriesTableTableUpdateCompanionBuilder =
    ItemHistoriesTableCompanion Function({
      Value<String> id,
      Value<String> itemId,
      Value<String> title,
      Value<String> label,
      Value<String> description,
      Value<int> rowid,
    });

class $$ItemHistoriesTableTableFilterComposer
    extends Composer<_$AppDatabase, $ItemHistoriesTableTable> {
  $$ItemHistoriesTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ItemHistoriesTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemHistoriesTableTable> {
  $$ItemHistoriesTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get itemId => $composableBuilder(
    column: $table.itemId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ItemHistoriesTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemHistoriesTableTable> {
  $$ItemHistoriesTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemId =>
      $composableBuilder(column: $table.itemId, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );
}

class $$ItemHistoriesTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ItemHistoriesTableTable,
          ItemHistoriesTableData,
          $$ItemHistoriesTableTableFilterComposer,
          $$ItemHistoriesTableTableOrderingComposer,
          $$ItemHistoriesTableTableAnnotationComposer,
          $$ItemHistoriesTableTableCreateCompanionBuilder,
          $$ItemHistoriesTableTableUpdateCompanionBuilder,
          (
            ItemHistoriesTableData,
            BaseReferences<
              _$AppDatabase,
              $ItemHistoriesTableTable,
              ItemHistoriesTableData
            >,
          ),
          ItemHistoriesTableData,
          PrefetchHooks Function()
        > {
  $$ItemHistoriesTableTableTableManager(
    _$AppDatabase db,
    $ItemHistoriesTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemHistoriesTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemHistoriesTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemHistoriesTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> itemId = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => ItemHistoriesTableCompanion(
                id: id,
                itemId: itemId,
                title: title,
                label: label,
                description: description,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String itemId,
                required String title,
                required String label,
                required String description,
                Value<int> rowid = const Value.absent(),
              }) => ItemHistoriesTableCompanion.insert(
                id: id,
                itemId: itemId,
                title: title,
                label: label,
                description: description,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ItemHistoriesTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ItemHistoriesTableTable,
      ItemHistoriesTableData,
      $$ItemHistoriesTableTableFilterComposer,
      $$ItemHistoriesTableTableOrderingComposer,
      $$ItemHistoriesTableTableAnnotationComposer,
      $$ItemHistoriesTableTableCreateCompanionBuilder,
      $$ItemHistoriesTableTableUpdateCompanionBuilder,
      (
        ItemHistoriesTableData,
        BaseReferences<
          _$AppDatabase,
          $ItemHistoriesTableTable,
          ItemHistoriesTableData
        >,
      ),
      ItemHistoriesTableData,
      PrefetchHooks Function()
    >;
typedef $$HistoryAttachmentsTableTableCreateCompanionBuilder =
    HistoryAttachmentsTableCompanion Function({
      required String id,
      required String historyId,
      required String url,
      required String type,
      Value<int> rowid,
    });
typedef $$HistoryAttachmentsTableTableUpdateCompanionBuilder =
    HistoryAttachmentsTableCompanion Function({
      Value<String> id,
      Value<String> historyId,
      Value<String> url,
      Value<String> type,
      Value<int> rowid,
    });

class $$HistoryAttachmentsTableTableFilterComposer
    extends Composer<_$AppDatabase, $HistoryAttachmentsTableTable> {
  $$HistoryAttachmentsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get historyId => $composableBuilder(
    column: $table.historyId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HistoryAttachmentsTableTableOrderingComposer
    extends Composer<_$AppDatabase, $HistoryAttachmentsTableTable> {
  $$HistoryAttachmentsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get historyId => $composableBuilder(
    column: $table.historyId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get url => $composableBuilder(
    column: $table.url,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HistoryAttachmentsTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $HistoryAttachmentsTableTable> {
  $$HistoryAttachmentsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get historyId =>
      $composableBuilder(column: $table.historyId, builder: (column) => column);

  GeneratedColumn<String> get url =>
      $composableBuilder(column: $table.url, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);
}

class $$HistoryAttachmentsTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HistoryAttachmentsTableTable,
          HistoryAttachmentsTableData,
          $$HistoryAttachmentsTableTableFilterComposer,
          $$HistoryAttachmentsTableTableOrderingComposer,
          $$HistoryAttachmentsTableTableAnnotationComposer,
          $$HistoryAttachmentsTableTableCreateCompanionBuilder,
          $$HistoryAttachmentsTableTableUpdateCompanionBuilder,
          (
            HistoryAttachmentsTableData,
            BaseReferences<
              _$AppDatabase,
              $HistoryAttachmentsTableTable,
              HistoryAttachmentsTableData
            >,
          ),
          HistoryAttachmentsTableData,
          PrefetchHooks Function()
        > {
  $$HistoryAttachmentsTableTableTableManager(
    _$AppDatabase db,
    $HistoryAttachmentsTableTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HistoryAttachmentsTableTableFilterComposer(
                $db: db,
                $table: table,
              ),
          createOrderingComposer: () =>
              $$HistoryAttachmentsTableTableOrderingComposer(
                $db: db,
                $table: table,
              ),
          createComputedFieldComposer: () =>
              $$HistoryAttachmentsTableTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> historyId = const Value.absent(),
                Value<String> url = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => HistoryAttachmentsTableCompanion(
                id: id,
                historyId: historyId,
                url: url,
                type: type,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String historyId,
                required String url,
                required String type,
                Value<int> rowid = const Value.absent(),
              }) => HistoryAttachmentsTableCompanion.insert(
                id: id,
                historyId: historyId,
                url: url,
                type: type,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HistoryAttachmentsTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HistoryAttachmentsTableTable,
      HistoryAttachmentsTableData,
      $$HistoryAttachmentsTableTableFilterComposer,
      $$HistoryAttachmentsTableTableOrderingComposer,
      $$HistoryAttachmentsTableTableAnnotationComposer,
      $$HistoryAttachmentsTableTableCreateCompanionBuilder,
      $$HistoryAttachmentsTableTableUpdateCompanionBuilder,
      (
        HistoryAttachmentsTableData,
        BaseReferences<
          _$AppDatabase,
          $HistoryAttachmentsTableTable,
          HistoryAttachmentsTableData
        >,
      ),
      HistoryAttachmentsTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CollectionItemsTableTableManager get collectionItems =>
      $$CollectionItemsTableTableManager(_db, _db.collectionItems);
  $$ItemDetailsTableTableTableManager get itemDetailsTable =>
      $$ItemDetailsTableTableTableManager(_db, _db.itemDetailsTable);
  $$TastingNoteGroupsTableTableTableManager get tastingNoteGroupsTable =>
      $$TastingNoteGroupsTableTableTableManager(
        _db,
        _db.tastingNoteGroupsTable,
      );
  $$TastingNotesTableTableTableManager get tastingNotesTable =>
      $$TastingNotesTableTableTableManager(_db, _db.tastingNotesTable);
  $$ItemHistoriesTableTableTableManager get itemHistoriesTable =>
      $$ItemHistoriesTableTableTableManager(_db, _db.itemHistoriesTable);
  $$HistoryAttachmentsTableTableTableManager get historyAttachmentsTable =>
      $$HistoryAttachmentsTableTableTableManager(
        _db,
        _db.historyAttachmentsTable,
      );
}
