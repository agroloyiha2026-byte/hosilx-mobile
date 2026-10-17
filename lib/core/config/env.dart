/// Supabase sozlamalari. FlutLab'da --dart-define ishlatish qiyin, shuning uchun
/// quyidagi ikki qiymatni to'g'ridan-to'g'ri o'zgartiring (Supabase > Project Settings > API).
/// Faqat Project URL va anon/publishable kalit. service_role / secret kalitni BU YERGA YOZMANG.
class Env {
  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL', defaultValue: 'https://qmrfyvxvmbkokldffpnq.supabase.co');
  static const supabaseAnonKey = String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFtcmZ5dnh2bWJrb2tsZGZmcG5xIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc5MjEyOTkwNCwiZXhwIjoyMTA3NzA1OTA0fQ.YbiV0HhmZEYuxB8Y41lhTsvD93OptUBo10b1VpsVbYc');
  static const webUrl = String.fromEnvironment('WEB_URL', defaultValue: 'PASTE_WEB_URL');

  static bool get isConfigured =>
      supabaseUrl.startsWith('https://') && !supabaseAnonKey.startsWith('PASTE');
}
