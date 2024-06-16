import '../database.dart';

class VistaCeldashuertoConImagenTable
    extends SupabaseTable<VistaCeldashuertoConImagenRow> {
  @override
  String get tableName => 'vista_celdashuerto_con_imagen';

  @override
  VistaCeldashuertoConImagenRow createRow(Map<String, dynamic> data) =>
      VistaCeldashuertoConImagenRow(data);
}

class VistaCeldashuertoConImagenRow extends SupabaseDataRow {
  VistaCeldashuertoConImagenRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VistaCeldashuertoConImagenTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  int? get gridId => getField<int>('grid_id');
  set gridId(int? value) => setField<int>('grid_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  int? get row => getField<int>('row');
  set row(int? value) => setField<int>('row', value);

  int? get column => getField<int>('column');
  set column(int? value) => setField<int>('column', value);

  bool? get imgTerreno => getField<bool>('img_terreno');
  set imgTerreno(bool? value) => setField<bool>('img_terreno', value);

  int? get cultivoPlantado => getField<int>('cultivo_plantado');
  set cultivoPlantado(int? value) => setField<int>('cultivo_plantado', value);

  String? get cultImg => getField<String>('cult_img');
  set cultImg(String? value) => setField<String>('cult_img', value);

  String? get cultNombre => getField<String>('cult_nombre');
  set cultNombre(String? value) => setField<String>('cult_nombre', value);
}
