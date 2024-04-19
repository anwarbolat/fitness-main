import 'package:fitness/pages/challenges.dart';
import 'package:fitness/widgets/button_primary.dart';
import 'package:fitness/widgets/input_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const String id = 'login';

  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/login_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login using your gym member details',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.w700,
                  height: 1.0,
                ),
              ),
              const SizedBox(height: 40.0),
              const InputField(label: 'Email address', hint: 'Enter your email address'),
              const SizedBox(height: 16.0),
              const InputField(label: 'ID number', hint: 'Enter your gym ID number'),
              const SizedBox(height: 40.0),
              ButtonPrimary(
                label: 'Login',
                onPressed: () => Navigator.pushNamed(context, Challenges.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
