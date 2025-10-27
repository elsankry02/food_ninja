import 'package:flutter/material.dart';
import 'package:food_ninja/features/presentation/navbar_page/navbar_page.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Viga"),
      home: const NavBarPage(),
    );
  }
}
