import '../database.dart';

class EventsTable extends SupabaseTable<EventsRow> {
  @override
  String get tableName => 'events';

  @override
  EventsRow createRow(Map<String, dynamic> data) => EventsRow(data);
}

class EventsRow extends SupabaseDataRow {
  EventsRow(super.data);

  @override
  SupabaseTable get table => EventsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get by => getField<String>('by')!;
  set by(String value) => setField<String>('by', value);

  dynamic get details => getField<dynamic>('details')!;
  set details(dynamic value) => setField<dynamic>('details', value);

  List<String> get participants => getListField<String>('participants');
  set participants(List<String> value) =>
      setListField<String>('participants', value);
}
