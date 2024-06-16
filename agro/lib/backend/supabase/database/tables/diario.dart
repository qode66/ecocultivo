import '../database.dart';

class DiarioTable extends SupabaseTable<DiarioRow> {
  @override
  String get tableName => 'Diario';

  @override
  DiarioRow createRow(Map<String, dynamic> data) => DiarioRow(data);
}

class DiarioRow extends SupabaseDataRow {
  DiarioRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiarioTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get fecha => getField<DateTime>('fecha')!;
  set fecha(DateTime value) => setField<DateTime>('fecha', value);

  int get cultivo => getField<int>('cultivo')!;
  set cultivo(int value) => setField<int>('cultivo', value);

  int get operacion => getField<int>('operacion')!;
  set operacion(int value) => setField<int>('operacion', value);
}
