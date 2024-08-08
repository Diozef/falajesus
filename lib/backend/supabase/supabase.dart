import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';
export 'storage/storage.dart';

const _kSupabaseUrl = 'https://hzyddqkvdaawdyvffqfu.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imh6eWRkcWt2ZGFhd2R5dmZmcWZ1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk3NDcwMjYsImV4cCI6MjAyNTMyMzAyNn0.LksA2gnq3ljRR6JBk_OmS7h0wbF9q5R2TxdX-W7TRBc';

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
