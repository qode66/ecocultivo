import '../database.dart';

class EstacinTable extends SupabaseTable<EstacinRow> {
  @override
  String get tableName => 'Estación';

  @override
  EstacinRow createRow(Map<String, dynamic> data) => EstacinRow(data);
}

class EstacinRow extends SupabaseDataRow {
  EstacinRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => EstacinTable();

  int get idEstacion => getField<int>('id_estacion')!;
  set idEstacion(int value) => setField<int>('id_estacion', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get estacion => getField<String>('estacion')!;
  set estacion(String value) => setField<String>('estacion', value);

  String? get estacionImg => getField<String>('estacion_img');
  set estacionImg(String? value) => setField<String>('estacion_img', value);
}
