import 'package:flutter/material.dart';
import 'package:solid/random_color_generator.dart';

void main() {
  runApp(MyApp());
}
/// The main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RandomColorGenerator(),
    );
  }
}
