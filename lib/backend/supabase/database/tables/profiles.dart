import '../database.dart';

class ProfilesTable extends SupabaseTable<ProfilesRow> {
  @override
  String get tableName => 'profiles';

  @override
  ProfilesRow createRow(Map<String, dynamic> data) => ProfilesRow(data);
}

class ProfilesRow extends SupabaseDataRow {
  ProfilesRow(super.data);

  @override
  SupabaseTable get table => ProfilesTable();

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get profilePict => getField<String>('profile_pict');
  set profilePict(String? value) => setField<String>('profile_pict', value);

  dynamic get details => getField<dynamic>('details');
  set details(dynamic value) => setField<dynamic>('details', value);

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  List<String> get badges => getListField<String>('badges');
  set badges(List<String>? value) => setListField<String>('badges', value);

  List<String> get achievements => getListField<String>('achievements');
  set achievements(List<String>? value) =>
      setListField<String>('achievements', value);

  List<String> get uploads => getListField<String>('uploads');
  set uploads(List<String>? value) => setListField<String>('uploads', value);
}
