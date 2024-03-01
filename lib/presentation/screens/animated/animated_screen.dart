import 'dart:math' show Random;
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.indigo;
  double borderRaidius = 10.0;

  void changeShate() {
    final random = Random();
    width = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    borderRaidius = random.nextInt(100) + 20;
    color = Color.fromRGBO(
        random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(microseconds: 400),
          curve: Curves.elasticInOut,
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(borderRaidius)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShate,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}
