import '../database.dart';

class HuertosCuadriculasTable extends SupabaseTable<HuertosCuadriculasRow> {
  @override
  String get tableName => 'huertosCuadriculas';

  @override
  HuertosCuadriculasRow createRow(Map<String, dynamic> data) =>
      HuertosCuadriculasRow(data);
}

class HuertosCuadriculasRow extends SupabaseDataRow {
  HuertosCuadriculasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HuertosCuadriculasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  bool get terreno => getField<bool>('terreno')!;
  set terreno(bool value) => setField<bool>('terreno', value);

  int? get nombreGrafica => getField<int>('nombre_grafica');
  set nombreGrafica(int? value) => setField<int>('nombre_grafica', value);
}
