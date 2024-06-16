import '../database.dart';

class SiembraTipoTable extends SupabaseTable<SiembraTipoRow> {
  @override
  String get tableName => 'SiembraTipo';

  @override
  SiembraTipoRow createRow(Map<String, dynamic> data) => SiembraTipoRow(data);
}

class SiembraTipoRow extends SupabaseDataRow {
  SiembraTipoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SiembraTipoTable();

  int get idSiembratipo => getField<int>('id_siembratipo')!;
  set idSiembratipo(int value) => setField<int>('id_siembratipo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get siembraTipo => getField<String>('siembra_tipo')!;
  set siembraTipo(String value) => setField<String>('siembra_tipo', value);

  String? get siembraImg => getField<String>('siembra_img');
  set siembraImg(String? value) => setField<String>('siembra_img', value);

  String? get siembraDesc => getField<String>('siembra_desc');
  set siembraDesc(String? value) => setField<String>('siembra_desc', value);
}
