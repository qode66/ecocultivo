import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://kqnmhzqdleutwxhiyhsy.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtxbm1oenFkbGV1dHd4aGl5aHN5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTcwNTY2NzYsImV4cCI6MjAzMjYzMjY3Nn0.KZb3rtkNGT-leykCrbHMxsJlDQWjhxyguja-dTD0vtA';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
