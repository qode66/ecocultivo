import '../database.dart';

class FaseLunaTable extends SupabaseTable<FaseLunaRow> {
  @override
  String get tableName => 'FaseLuna';

  @override
  FaseLunaRow createRow(Map<String, dynamic> data) => FaseLunaRow(data);
}

class FaseLunaRow extends SupabaseDataRow {
  FaseLunaRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FaseLunaTable();

  int get idFaseLuna => getField<int>('id_faseLuna')!;
  set idFaseLuna(int value) => setField<int>('id_faseLuna', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get faseLuna => getField<String>('faseLuna')!;
  set faseLuna(String value) => setField<String>('faseLuna', value);

  String? get faseLunaImg => getField<String>('faseLuna_img');
  set faseLunaImg(String? value) => setField<String>('faseLuna_img', value);
}
