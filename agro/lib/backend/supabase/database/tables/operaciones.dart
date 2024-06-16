import '../database.dart';

class OperacionesTable extends SupabaseTable<OperacionesRow> {
  @override
  String get tableName => 'Operaciones';

  @override
  OperacionesRow createRow(Map<String, dynamic> data) => OperacionesRow(data);
}

class OperacionesRow extends SupabaseDataRow {
  OperacionesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OperacionesTable();

  int get idOperacion => getField<int>('id_operacion')!;
  set idOperacion(int value) => setField<int>('id_operacion', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get operacion => getField<String>('operacion')!;
  set operacion(String value) => setField<String>('operacion', value);

  String? get operacionDesc => getField<String>('operacion_desc');
  set operacionDesc(String? value) => setField<String>('operacion_desc', value);

  String? get operacionImg => getField<String>('operacion_img');
  set operacionImg(String? value) => setField<String>('operacion_img', value);
}
