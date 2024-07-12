import '../database.dart';

class AchievementsTable extends SupabaseTable<AchievementsRow> {
  @override
  String get tableName => 'achievements';

  @override
  AchievementsRow createRow(Map<String, dynamic> data) => AchievementsRow(data);
}

class AchievementsRow extends SupabaseDataRow {
  AchievementsRow(super.data);

  @override
  SupabaseTable get table => AchievementsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get icon => getField<String>('icon')!;
  set icon(String value) => setField<String>('icon', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);
}
