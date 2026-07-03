import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool obscurePassword = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(24),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 20),

              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Login to continue using Afrinza",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              TextField(
                controller: passwordController,
                obscureText: obscurePassword,

                decoration: InputDecoration(

                  labelText: "Password",

                  border: const OutlineInputBorder(),

                  suffixIcon: IconButton(

                    icon: Icon(

                      obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,

                    ),

                    onPressed: () {

                      setState(() {

                        obscurePassword = !obscurePassword;

                      });

                    },

                  ),

                ),

              ),

              const SizedBox(height: 15),

              Align(
                alignment: Alignment.centerRight,

                child: TextButton(

                  onPressed: () {},

                  child: const Text(
                    "Forgot Password?",
                  ),

                ),

              ),

              const SizedBox(height: 20),

              SizedBox(

                width: double.infinity,

                height: 55,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor: const Color(0xff00875A),

                    foregroundColor: Colors.white,

                  ),

                  onPressed: () {},

                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),

                ),

              ),

              const SizedBox(height: 40),

              Row(

                children: const [

                  Expanded(child: Divider()),

                  Padding(

                    padding: EdgeInsets.symmetric(horizontal: 10),

                    child: Text("OR"),

                  ),

                  Expanded(child: Divider()),

                ],

              ),

              const SizedBox(height: 35),

              SizedBox(

                width: double.infinity,

                height: 55,

                child: OutlinedButton.icon(

                  onPressed: () {},

                  icon: const Icon(Icons.g_mobiledata),

                  label: const Text("Continue with Google"),

                ),

              ),

              const SizedBox(height: 15),

              SizedBox(

                width: double.infinity,

                height: 55,

                child: OutlinedButton.icon(

                  onPressed: () {},

                  icon: const Icon(Icons.facebook),

                  label: const Text("Continue with Facebook"),

                ),

              ),

              const SizedBox(height: 30),

              Row(

                mainAxisAlignment: MainAxisAlignment.center,

                children: [

                  const Text("Don't have an account?"),

                  TextButton(

                    onPressed: () {},

                    child: const Text("Register"),

                  ),

                ],

              )

            ],

          ),

        ),

      ),

    );

  }

}