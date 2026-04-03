import 'package:flutter/material.dart';
import 'package:real_state_app/core/theme/app_theme.dart';
import 'package:real_state_app/features/home/home_dependencies.dart';
import 'package:real_state_app/features/home/presentation/view_models/home_view_model.dart';
import 'package:real_state_app/features/home/presentation/screens/home_screen.dart';

void main() {
  runApp(RealEstateApp(homeViewModel: buildHomeViewModel()));
}

class RealEstateApp extends StatelessWidget {
  final HomeViewModel homeViewModel;

  const RealEstateApp({super.key, required this.homeViewModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(viewModel: homeViewModel),
      theme: AppTheme.lightTheme,
    );
  }
}
