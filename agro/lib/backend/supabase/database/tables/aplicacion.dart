import '../database.dart';

class AplicacionTable extends SupabaseTable<AplicacionRow> {
  @override
  String get tableName => 'Aplicacion';

  @override
  AplicacionRow createRow(Map<String, dynamic> data) => AplicacionRow(data);
}

class AplicacionRow extends SupabaseDataRow {
  AplicacionRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AplicacionTable();

  int get idAplicacion => getField<int>('id_aplicacion')!;
  set idAplicacion(int value) => setField<int>('id_aplicacion', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get aplicacion => getField<String>('aplicacion')!;
  set aplicacion(String value) => setField<String>('aplicacion', value);

  String? get aplicacionImg => getField<String>('aplicacion_img');
  set aplicacionImg(String? value) => setField<String>('aplicacion_img', value);

  String? get aplicacionDesc => getField<String>('aplicacion_desc');
  set aplicacionDesc(String? value) =>
      setField<String>('aplicacion_desc', value);
}
