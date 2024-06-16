import '../database.dart';

class CultivoTable extends SupabaseTable<CultivoRow> {
  @override
  String get tableName => 'Cultivo';

  @override
  CultivoRow createRow(Map<String, dynamic> data) => CultivoRow(data);
}

class CultivoRow extends SupabaseDataRow {
  CultivoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CultivoTable();

  int get idCultivo => getField<int>('id_cultivo')!;
  set idCultivo(int value) => setField<int>('id_cultivo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get cultNombre => getField<String>('cult_nombre')!;
  set cultNombre(String value) => setField<String>('cult_nombre', value);

  String get cultCient => getField<String>('cult_cient')!;
  set cultCient(String value) => setField<String>('cult_cient', value);

  String? get cultImg => getField<String>('cult_img');
  set cultImg(String? value) => setField<String>('cult_img', value);

  int get cultTipo => getField<int>('cult_tipo')!;
  set cultTipo(int value) => setField<int>('cult_tipo', value);

  int get siembraEstacion => getField<int>('siembra_estacion')!;
  set siembraEstacion(int value) => setField<int>('siembra_estacion', value);

  int get siembraTipo => getField<int>('siembra_tipo')!;
  set siembraTipo(int value) => setField<int>('siembra_tipo', value);

  String get siembraEspacio => getField<String>('siembra_espacio')!;
  set siembraEspacio(String value) =>
      setField<String>('siembra_espacio', value);

  int get siembraLuna => getField<int>('siembra_luna')!;
  set siembraLuna(int value) => setField<int>('siembra_luna', value);

  int get minTemp => getField<int>('min_temp')!;
  set minTemp(int value) => setField<int>('min_temp', value);

  int get maxTemp => getField<int>('max_temp')!;
  set maxTemp(int value) => setField<int>('max_temp', value);

  int get riego => getField<int>('riego')!;
  set riego(int value) => setField<int>('riego', value);

  int get cosechaEstacion => getField<int>('cosecha_estacion')!;
  set cosechaEstacion(int value) => setField<int>('cosecha_estacion', value);

  String get cultDesc => getField<String>('cult_desc')!;
  set cultDesc(String value) => setField<String>('cult_desc', value);

  String get cultSiembra => getField<String>('cult_siembra')!;
  set cultSiembra(String value) => setField<String>('cult_siembra', value);

  String get cultClima => getField<String>('cult_clima')!;
  set cultClima(String value) => setField<String>('cult_clima', value);

  String get cultCuidados => getField<String>('cult_cuidados')!;
  set cultCuidados(String value) => setField<String>('cult_cuidados', value);

  String get cultCosecha => getField<String>('cult_cosecha')!;
  set cultCosecha(String value) => setField<String>('cult_cosecha', value);

  String get cultPlaga => getField<String>('cult_plaga')!;
  set cultPlaga(String value) => setField<String>('cult_plaga', value);

  String get cultBenef => getField<String>('cult_benef')!;
  set cultBenef(String value) => setField<String>('cult_benef', value);

  String get cultPerjud => getField<String>('cult_perjud')!;
  set cultPerjud(String value) => setField<String>('cult_perjud', value);

  String? get cultPlantacion => getField<String>('cult_plantacion');
  set cultPlantacion(String? value) =>
      setField<String>('cult_plantacion', value);

  int? get cultMesinicial => getField<int>('cult_mesinicial');
  set cultMesinicial(int? value) => setField<int>('cult_mesinicial', value);

  int? get cultMesfinal => getField<int>('cult_mesfinal');
  set cultMesfinal(int? value) => setField<int>('cult_mesfinal', value);
}
