import '../database.dart';

class RiegoTable extends SupabaseTable<RiegoRow> {
  @override
  String get tableName => 'Riego';

  @override
  RiegoRow createRow(Map<String, dynamic> data) => RiegoRow(data);
}

class RiegoRow extends SupabaseDataRow {
  RiegoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RiegoTable();

  int get idRiego => getField<int>('id_riego')!;
  set idRiego(int value) => setField<int>('id_riego', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get riego => getField<String>('riego')!;
  set riego(String value) => setField<String>('riego', value);

  String? get riegoImg => getField<String>('riego_img');
  set riegoImg(String? value) => setField<String>('riego_img', value);

  String? get reigoDesc => getField<String>('reigo_desc');
  set reigoDesc(String? value) => setField<String>('reigo_desc', value);
}
