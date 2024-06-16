import '../database.dart';

class CantidadparcelasselecionadasTable
    extends SupabaseTable<CantidadparcelasselecionadasRow> {
  @override
  String get tableName => 'cantidadparcelasselecionadas';

  @override
  CantidadparcelasselecionadasRow createRow(Map<String, dynamic> data) =>
      CantidadparcelasselecionadasRow(data);
}

class CantidadparcelasselecionadasRow extends SupabaseDataRow {
  CantidadparcelasselecionadasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CantidadparcelasselecionadasTable();

  bool? get hayRegistros => getField<bool>('hay_registros');
  set hayRegistros(bool? value) => setField<bool>('hay_registros', value);

  int? get cantidad => getField<int>('cantidad');
  set cantidad(int? value) => setField<int>('cantidad', value);

  int? get nombreGrafica => getField<int>('nombre_grafica');
  set nombreGrafica(int? value) => setField<int>('nombre_grafica', value);

  int? get cantidadPorGrafica => getField<int>('cantidad_por_grafica');
  set cantidadPorGrafica(int? value) =>
      setField<int>('cantidad_por_grafica', value);
}
