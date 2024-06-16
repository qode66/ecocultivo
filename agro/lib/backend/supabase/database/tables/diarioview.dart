import '../database.dart';

class DiarioviewTable extends SupabaseTable<DiarioviewRow> {
  @override
  String get tableName => 'diarioview';

  @override
  DiarioviewRow createRow(Map<String, dynamic> data) => DiarioviewRow(data);
}

class DiarioviewRow extends SupabaseDataRow {
  DiarioviewRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => DiarioviewTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  String? get cultNombre => getField<String>('cult_nombre');
  set cultNombre(String? value) => setField<String>('cult_nombre', value);

  String? get operacion => getField<String>('operacion');
  set operacion(String? value) => setField<String>('operacion', value);
}
