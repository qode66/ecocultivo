import '../database.dart';

class FormatoTable extends SupabaseTable<FormatoRow> {
  @override
  String get tableName => 'Formato';

  @override
  FormatoRow createRow(Map<String, dynamic> data) => FormatoRow(data);
}

class FormatoRow extends SupabaseDataRow {
  FormatoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FormatoTable();

  int get idFormato => getField<int>('id_formato')!;
  set idFormato(int value) => setField<int>('id_formato', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get formato => getField<String>('formato')!;
  set formato(String value) => setField<String>('formato', value);

  String? get formatoImg => getField<String>('formato_img');
  set formatoImg(String? value) => setField<String>('formato_img', value);

  String? get formatoDesc => getField<String>('formato_desc');
  set formatoDesc(String? value) => setField<String>('formato_desc', value);
}
