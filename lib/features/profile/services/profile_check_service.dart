import 'package:supabase_flutter/supabase_flutter.dart';

class ProfileCheckService {
  final supabase = Supabase.instance.client;

  Future<bool> isProfileComplete() async {
    final user = supabase.auth.currentUser;

    if (user == null) return false;

    final response = await supabase
        .from('profiles')
        .select()
        .eq('id', user.id)
        .maybeSingle();

    if (response == null) return false;

    // check minimum required fields
    final fullName = response['full_name'];
    final phone = response['phone'];
    final country = response['current_country'];

    if (fullName == null || phone == null || country == null) {
      return false;
    }

    return true;
  }
}