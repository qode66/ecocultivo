import '../database.dart';

class MesesTable extends SupabaseTable<MesesRow> {
  @override
  String get tableName => 'meses';

  @override
  MesesRow createRow(Map<String, dynamic> data) => MesesRow(data);
}

class MesesRow extends SupabaseDataRow {
  MesesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MesesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get meses => getField<String>('meses')!;
  set meses(String value) => setField<String>('meses', value);
}
