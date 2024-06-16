import '../database.dart';

class PesticidaTable extends SupabaseTable<PesticidaRow> {
  @override
  String get tableName => 'Pesticida';

  @override
  PesticidaRow createRow(Map<String, dynamic> data) => PesticidaRow(data);
}

class PesticidaRow extends SupabaseDataRow {
  PesticidaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PesticidaTable();

  int get idPest => getField<int>('id_pest')!;
  set idPest(int value) => setField<int>('id_pest', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get pesticida => getField<String>('pesticida')!;
  set pesticida(String value) => setField<String>('pesticida', value);

  String? get pesticidaImg => getField<String>('pesticida_img');
  set pesticidaImg(String? value) => setField<String>('pesticida_img', value);

  int get pesticidaTipo => getField<int>('pesticida_tipo')!;
  set pesticidaTipo(int value) => setField<int>('pesticida_tipo', value);

  int get pesticidaEfecto => getField<int>('pesticida_efecto')!;
  set pesticidaEfecto(int value) => setField<int>('pesticida_efecto', value);

  int get pesticidaFormato => getField<int>('pesticida_formato')!;
  set pesticidaFormato(int value) => setField<int>('pesticida_formato', value);

  int get pesticidaAplicacion => getField<int>('pesticida_aplicacion')!;
  set pesticidaAplicacion(int value) =>
      setField<int>('pesticida_aplicacion', value);

  String? get pestDesc => getField<String>('pest_desc');
  set pestDesc(String? value) => setField<String>('pest_desc', value);

  String? get pestPlaga => getField<String>('pest_plaga');
  set pestPlaga(String? value) => setField<String>('pest_plaga', value);

  String? get pestIngredientes => getField<String>('pest_ingredientes');
  set pestIngredientes(String? value) =>
      setField<String>('pest_ingredientes', value);

  String? get pestElaboracion => getField<String>('pest_elaboracion');
  set pestElaboracion(String? value) =>
      setField<String>('pest_elaboracion', value);

  String? get pestUso => getField<String>('pest_uso');
  set pestUso(String? value) => setField<String>('pest_uso', value);

  String? get pestPeligro => getField<String>('pest_peligro');
  set pestPeligro(String? value) => setField<String>('pest_peligro', value);
}
