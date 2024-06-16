import '../database.dart';

class VistaHuertototalGraficaTable
    extends SupabaseTable<VistaHuertototalGraficaRow> {
  @override
  String get tableName => 'vista_huertototal_grafica';

  @override
  VistaHuertototalGraficaRow createRow(Map<String, dynamic> data) =>
      VistaHuertototalGraficaRow(data);
}

class VistaHuertototalGraficaRow extends SupabaseDataRow {
  VistaHuertototalGraficaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaHuertototalGraficaTable();

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
