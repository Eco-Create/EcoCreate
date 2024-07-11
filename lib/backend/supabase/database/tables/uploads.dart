import '../database.dart';

class UploadsTable extends SupabaseTable<UploadsRow> {
  @override
  String get tableName => 'uploads';

  @override
  UploadsRow createRow(Map<String, dynamic> data) => UploadsRow(data);
}

class UploadsRow extends SupabaseDataRow {
  UploadsRow(super.data);

  @override
  SupabaseTable get table => UploadsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get by => getField<String>('by')!;
  set by(String value) => setField<String>('by', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  dynamic get dataField => getField<dynamic>('data')!;
  set dataField(dynamic value) => setField<dynamic>('data', value);
}
