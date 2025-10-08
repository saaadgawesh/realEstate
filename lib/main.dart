import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/AppTheme.dart';
import 'package:real_state_app/Core/screens/HomeScreen.dart';

void main() {
  runApp(RealEstateApp());
}

class RealEstateApp extends StatelessWidget {
  const RealEstateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      theme: AppTheme.LightTheme,
    );
  }
}
