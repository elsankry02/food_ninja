import 'package:flutter/material.dart';
import 'package:food_ninja/features/presentation/splash_page/splash_page.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Viga"),
      home: const SplashPage(),
    );
  }
}
