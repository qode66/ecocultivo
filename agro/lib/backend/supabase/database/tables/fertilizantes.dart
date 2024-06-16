import '../database.dart';

class FertilizantesTable extends SupabaseTable<FertilizantesRow> {
  @override
  String get tableName => 'Fertilizantes';

  @override
  FertilizantesRow createRow(Map<String, dynamic> data) =>
      FertilizantesRow(data);
}

class FertilizantesRow extends SupabaseDataRow {
  FertilizantesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FertilizantesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get nombre => getField<String>('Nombre')!;
  set nombre(String value) => setField<String>('Nombre', value);

  String get aporteNutricional => getField<String>('Aporte Nutricional')!;
  set aporteNutricional(String value) =>
      setField<String>('Aporte Nutricional', value);

  String get dificultadDeElaboracion =>
      getField<String>('Dificultad de elaboración')!;
  set dificultadDeElaboracion(String value) =>
      setField<String>('Dificultad de elaboración', value);

  String? get formato => getField<String>('Formato');
  set formato(String? value) => setField<String>('Formato', value);

  String? get aplicacion => getField<String>('Aplicación');
  set aplicacion(String? value) => setField<String>('Aplicación', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  String? get fertilizanteImg => getField<String>('fertilizante_img');
  set fertilizanteImg(String? value) =>
      setField<String>('fertilizante_img', value);
}
