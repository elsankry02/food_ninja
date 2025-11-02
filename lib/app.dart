import 'package:flutter/material.dart';
import 'package:food_ninja/core/router/router.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Viga"),
    );
  }
}
