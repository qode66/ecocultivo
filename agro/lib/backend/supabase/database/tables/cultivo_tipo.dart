import '../database.dart';

class CultivoTipoTable extends SupabaseTable<CultivoTipoRow> {
  @override
  String get tableName => 'CultivoTipo';

  @override
  CultivoTipoRow createRow(Map<String, dynamic> data) => CultivoTipoRow(data);
}

class CultivoTipoRow extends SupabaseDataRow {
  CultivoTipoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CultivoTipoTable();

  int get idTipoCultivo => getField<int>('id_tipoCultivo')!;
  set idTipoCultivo(int value) => setField<int>('id_tipoCultivo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get tipoCultivo => getField<String>('tipoCultivo')!;
  set tipoCultivo(String value) => setField<String>('tipoCultivo', value);

  String? get tipoCultivoImg => getField<String>('tipoCultivo_img');
  set tipoCultivoImg(String? value) =>
      setField<String>('tipoCultivo_img', value);

  String? get tipoCultivoDesc => getField<String>('tipoCultivo_desc');
  set tipoCultivoDesc(String? value) =>
      setField<String>('tipoCultivo_desc', value);
}
