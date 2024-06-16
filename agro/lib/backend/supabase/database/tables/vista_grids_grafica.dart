import '../database.dart';

class VistaGridsGraficaTable extends SupabaseTable<VistaGridsGraficaRow> {
  @override
  String get tableName => 'vista_grids_grafica';

  @override
  VistaGridsGraficaRow createRow(Map<String, dynamic> data) =>
      VistaGridsGraficaRow(data);
}

class VistaGridsGraficaRow extends SupabaseDataRow {
  VistaGridsGraficaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaGridsGraficaTable();

  int? get gridId => getField<int>('grid_id');
  set gridId(int? value) => setField<int>('grid_id', value);

  int? get nombreGrafica => getField<int>('nombre_grafica');
  set nombreGrafica(int? value) => setField<int>('nombre_grafica', value);

  bool? get imgTerreno => getField<bool>('img_terreno');
  set imgTerreno(bool? value) => setField<bool>('img_terreno', value);

  int? get cultivoPlantado => getField<int>('cultivo_plantado');
  set cultivoPlantado(int? value) => setField<int>('cultivo_plantado', value);

  String? get cultImg => getField<String>('cult_img');
  set cultImg(String? value) => setField<String>('cult_img', value);

  String? get cultNombre => getField<String>('cult_nombre');
  set cultNombre(String? value) => setField<String>('cult_nombre', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);
}
