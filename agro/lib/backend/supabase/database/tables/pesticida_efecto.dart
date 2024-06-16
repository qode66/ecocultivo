import '../database.dart';

class PesticidaEfectoTable extends SupabaseTable<PesticidaEfectoRow> {
  @override
  String get tableName => 'PesticidaEfecto';

  @override
  PesticidaEfectoRow createRow(Map<String, dynamic> data) =>
      PesticidaEfectoRow(data);
}

class PesticidaEfectoRow extends SupabaseDataRow {
  PesticidaEfectoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PesticidaEfectoTable();

  int get idEfecto => getField<int>('id_efecto')!;
  set idEfecto(int value) => setField<int>('id_efecto', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String get efecto => getField<String>('efecto')!;
  set efecto(String value) => setField<String>('efecto', value);

  String? get efectoImg => getField<String>('efecto_img');
  set efectoImg(String? value) => setField<String>('efecto_img', value);

  String? get efectoDesc => getField<String>('efecto_desc');
  set efectoDesc(String? value) => setField<String>('efecto_desc', value);
}
