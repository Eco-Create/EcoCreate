import '../database.dart';

class BadgesTable extends SupabaseTable<BadgesRow> {
  @override
  String get tableName => 'badges';

  @override
  BadgesRow createRow(Map<String, dynamic> data) => BadgesRow(data);
}

class BadgesRow extends SupabaseDataRow {
  BadgesRow(super.data);

  @override
  SupabaseTable get table => BadgesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get icon => getField<String>('icon')!;
  set icon(String value) => setField<String>('icon', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
