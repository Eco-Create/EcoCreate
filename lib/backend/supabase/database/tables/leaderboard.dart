import '../database.dart';

class LeaderboardTable extends SupabaseTable<LeaderboardRow> {
  @override
  String get tableName => 'leaderboard';

  @override
  LeaderboardRow createRow(Map<String, dynamic> data) => LeaderboardRow(data);
}

class LeaderboardRow extends SupabaseDataRow {
  LeaderboardRow(super.data);

  @override
  SupabaseTable get table => LeaderboardTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get profile => getField<String>('profile');
  set profile(String? value) => setField<String>('profile', value);

  String? get nama => getField<String>('nama');
  set nama(String? value) => setField<String>('nama', value);

  int? get urutan => getField<int>('urutan');
  set urutan(int? value) => setField<int>('urutan', value);

  int? get point => getField<int>('point');
  set point(int? value) => setField<int>('point', value);
}
