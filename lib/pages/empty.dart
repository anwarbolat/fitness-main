import 'package:fitness/widgets/button_primary.dart';
import 'package:flutter/material.dart';

import 'intro.dart';

class Empty extends StatelessWidget {
  static const String id = 'empty';

  const Empty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ButtonPrimary(
            label: 'to intro()',
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, Intro.id, (route) => false);
            },
          ),
        ),
      ),
    );
  }
}
