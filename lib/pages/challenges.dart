import 'package:fitness/widgets/button_primary.dart';
import 'package:flutter/material.dart';

import '../widgets/item_challenge.dart';
import 'empty.dart';

class Challenges extends StatelessWidget {
  static const String id = 'challenges';

  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF161616),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Step 1 Out of 2'.toUpperCase(),
          style: const TextStyle(
            color: Color(0xFF999999),
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: Container(),
        //debug purposes
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pushNamed(context, Empty.id),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF161616),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF0D0D0D),
              spreadRadius: 0,
              blurRadius: 6,
              offset: Offset(0, -6), // changes position of shadow
            ),
          ],
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(24.0),
          child: ButtonPrimary(
            label: 'Next step',
            onPressed: () => Navigator.pushNamed(context, Empty.id),
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 24.0),
            child: Text(
              'Select your physical challenges',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
                height: 1.0,
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 12.0,
              children: const [
                ChallengeItem(image: 'assets/images/ch_core.png', title: 'Solid core'),
                ChallengeItem(image: 'assets/images/ch_posture.png', title: 'Improve posture'),
                ChallengeItem(image: 'assets/images/ch_stronger.png', title: 'Get stronger'),
                ChallengeItem(image: 'assets/images/ch_cond.png', title: 'Improve conditioning'),
                ChallengeItem(image: 'assets/images/ch_shredded.png', title: 'Get shredded'),
                ChallengeItem(image: 'assets/images/ch_flexible.png', title: 'Be more flexible'),
                ChallengeItem(image: 'assets/images/ch_weight.png', title: 'Loose weight'),
                ChallengeItem(image: 'assets/images/ch_lean.png', title: 'Get lean'),
                ChallengeItem(image: 'assets/images/ch_muscle.png', title: 'Build muscle'),
                ChallengeItem(image: 'assets/images/ch_tendons.png', title: 'Solid tendons'),
                ChallengeItem(image: 'assets/images/ch_mobility.png', title: 'Improve mobility'),
                ChallengeItem(image: 'assets/images/ch_cardio.png', title: 'Improve cardio'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
