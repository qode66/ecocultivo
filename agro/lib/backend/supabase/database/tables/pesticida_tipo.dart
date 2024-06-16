import '../database.dart';

class PesticidaTipoTable extends SupabaseTable<PesticidaTipoRow> {
  @override
  String get tableName => 'PesticidaTipo';

  @override
  PesticidaTipoRow createRow(Map<String, dynamic> data) =>
      PesticidaTipoRow(data);
}

class PesticidaTipoRow extends SupabaseDataRow {
  PesticidaTipoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PesticidaTipoTable();

  int get idPestTipo => getField<int>('id_pestTipo')!;
  set idPestTipo(int value) => setField<int>('id_pestTipo', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get pestTipo => getField<String>('pestTipo')!;
  set pestTipo(String value) => setField<String>('pestTipo', value);

  String? get pestTipoImg => getField<String>('pestTipo_img');
  set pestTipoImg(String? value) => setField<String>('pestTipo_img', value);

  String? get pestTipoDesc => getField<String>('pestTipo_desc');
  set pestTipoDesc(String? value) => setField<String>('pestTipo_desc', value);
}
