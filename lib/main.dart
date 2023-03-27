import 'package:bmi/SCREEN1.dart';
import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(debugShowCheckedModeBanner: false,
     home: Screen1(),
   );
  }
}

