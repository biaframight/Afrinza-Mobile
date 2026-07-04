import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../home/main_navigation.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState
    extends State<CompleteProfileScreen> {
  final supabase = Supabase.instance.client;

  final fullName = TextEditingController();
  final phone = TextEditingController();
  final country = TextEditingController();
  final city = TextEditingController();
  final bio = TextEditingController();

  bool loading = false;

  @override
  void dispose() {
    fullName.dispose();
    phone.dispose();
    country.dispose();
    city.dispose();
    bio.dispose();
    super.dispose();
  }

  Future<void> saveProfile() async {
    setState(() => loading = true);

    final user = supabase.auth.currentUser;

    if (user == null) {
      setState(() => loading = false);
      return;
    }

    await supabase.from('profiles').update({
      'full_name': fullName.text,
      'phone': phone.text,
      'current_country': country.text,
      'city': city.text,
      'bio': bio.text,
    }).eq('id', user.id);

    if (!mounted) return;

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const MainNavigation(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complete Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: fullName,
              decoration:
                  const InputDecoration(labelText: "Full Name"),
            ),

            TextField(
              controller: phone,
              decoration:
                  const InputDecoration(labelText: "Phone"),
            ),

            TextField(
              controller: country,
              decoration:
                  const InputDecoration(labelText: "Country"),
            ),

            TextField(
              controller: city,
              decoration:
                  const InputDecoration(labelText: "City"),
            ),

            TextField(
              controller: bio,
              decoration:
                  const InputDecoration(labelText: "Bio"),
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: loading ? null : saveProfile,
                child: Text(
                  loading ? "Saving..." : "Save Profile",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}