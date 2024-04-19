import 'package:fitness/widgets/button_primary.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Intro extends StatelessWidget {
  static const String id = 'intro';

  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/intro_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/intro_logo.png',
                height: 80.0,
              ),
              const SizedBox(height: 24.0),
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Color(0xFF5EB64A),
                    Color(0xFFE0FE10),
                  ]).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
                },
                child: const Text(
                  'Become a '
                  'better '
                  'athlete',
                  style: TextStyle(
                    fontSize: 64.0,
                    fontWeight: FontWeight.w900,
                    height: 1.0,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              const Text(
                'Set up your personal workout goals.\n'
                'You can update them anytime in your profile settings.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40.0),
              ButtonPrimary(
                label: 'Start personalisation',
                onPressed: () => Navigator.pushNamed(context, Login.id),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
