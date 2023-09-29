import 'package:flutter/material.dart';
import 'package:adv_basic/welcome_image.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer(this.color1, {super.key});

  const BackgroundContainer.purple({super.key})
    : color1 = Colors.purple;

  final Color color1;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        color: color1,
      ),
      child: const Center(
        child: WelcomeImage(),
      ),
    );
  }
}