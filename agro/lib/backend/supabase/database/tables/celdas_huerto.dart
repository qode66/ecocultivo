import '../database.dart';

class CeldasHuertoTable extends SupabaseTable<CeldasHuertoRow> {
  @override
  String get tableName => 'celdasHuerto';

  @override
  CeldasHuertoRow createRow(Map<String, dynamic> data) => CeldasHuertoRow(data);
}

class CeldasHuertoRow extends SupabaseDataRow {
  CeldasHuertoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CeldasHuertoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int? get row => getField<int>('row');
  set row(int? value) => setField<int>('row', value);

  int? get column => getField<int>('column');
  set column(int? value) => setField<int>('column', value);

  bool? get imgTerreno => getField<bool>('img_terreno');
  set imgTerreno(bool? value) => setField<bool>('img_terreno', value);

  int? get cultivoPlantado => getField<int>('cultivo_plantado');
  set cultivoPlantado(int? value) => setField<int>('cultivo_plantado', value);

  int? get gridId => getField<int>('grid_id');
  set gridId(int? value) => setField<int>('grid_id', value);

  int? get nombreGrafica => getField<int>('nombre_grafica');
  set nombreGrafica(int? value) => setField<int>('nombre_grafica', value);
}
