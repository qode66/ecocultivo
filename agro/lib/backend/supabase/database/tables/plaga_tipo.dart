import '../database.dart';

class PlagaTipoTable extends SupabaseTable<PlagaTipoRow> {
  @override
  String get tableName => 'PlagaTipo';

  @override
  PlagaTipoRow createRow(Map<String, dynamic> data) => PlagaTipoRow(data);
}

class PlagaTipoRow extends SupabaseDataRow {
  PlagaTipoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlagaTipoTable();

  int get idPlagatipo => getField<int>('id_plagatipo')!;
  set idPlagatipo(int value) => setField<int>('id_plagatipo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get tipoplaga => getField<String>('tipoplaga')!;
  set tipoplaga(String value) => setField<String>('tipoplaga', value);

  String? get tipoplagaImg => getField<String>('tipoplaga_img');
  set tipoplagaImg(String? value) => setField<String>('tipoplaga_img', value);

  String? get tipoplagaDesc => getField<String>('tipoplaga_desc');
  set tipoplagaDesc(String? value) => setField<String>('tipoplaga_desc', value);
}
