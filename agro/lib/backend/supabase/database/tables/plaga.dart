import '../database.dart';

class PlagaTable extends SupabaseTable<PlagaRow> {
  @override
  String get tableName => 'Plaga';

  @override
  PlagaRow createRow(Map<String, dynamic> data) => PlagaRow(data);
}

class PlagaRow extends SupabaseDataRow {
  PlagaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlagaTable();

  int get idPlaga => getField<int>('id_plaga')!;
  set idPlaga(int value) => setField<int>('id_plaga', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get plaga => getField<String>('plaga')!;
  set plaga(String value) => setField<String>('plaga', value);

  String? get plagaImg => getField<String>('plaga_img');
  set plagaImg(String? value) => setField<String>('plaga_img', value);

  String? get plagaDesc => getField<String>('plaga_desc');
  set plagaDesc(String? value) => setField<String>('plaga_desc', value);

  String? get plagaCausa => getField<String>('plaga_causa');
  set plagaCausa(String? value) => setField<String>('plaga_causa', value);

  String? get plagaAfecta => getField<String>('plaga_afecta');
  set plagaAfecta(String? value) => setField<String>('plaga_afecta', value);

  String? get plagaPest => getField<String>('plaga_pest');
  set plagaPest(String? value) => setField<String>('plaga_pest', value);

  int? get plagaType => getField<int>('plaga_type');
  set plagaType(int? value) => setField<int>('plaga_type', value);
}
