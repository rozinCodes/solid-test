import 'dart:math';

import 'package:flutter/material.dart';

/// A widget that generates random background colors on tap.
class RandomColorGenerator extends StatefulWidget {
  /// Constructs a RandomColorGenerator widget.
  const RandomColorGenerator({super.key});

  @override
  State<RandomColorGenerator> createState() => _RandomColorGeneratorState();
}

class _RandomColorGeneratorState extends State<RandomColorGenerator> {
  Color _backgroundColor = Colors.white;
  final Random _random = Random();

  /// Changes the background color to a random color.
  void _changeBackgroundColor() {
    setState(() {
      const int maxColorValue = 256;
      const double maxOpacity = 1.0;

      final int red = _random.nextInt(maxColorValue);
      final int green = _random.nextInt(maxColorValue);
      final int blue = _random.nextInt(maxColorValue);

      _backgroundColor = Color.fromRGBO(red, green, blue, maxOpacity);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeBackgroundColor();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Random Color Generator',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: _backgroundColor,
        ),
        backgroundColor: _backgroundColor,
        body: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
