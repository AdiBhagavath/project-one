import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'hero1',
      child: Lottie.asset('assets/lotties/Cat Movement.json'),
      // child: Opacity(
      //   opacity: 0.25,
      //   child: Image.asset(
      //     'assets/images/cyber.jpg',
      //     height: double.infinity,
      //     fit: BoxFit.cover,
      //   ),
      // ),
    );
  }
}
