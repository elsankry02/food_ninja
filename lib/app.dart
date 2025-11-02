import 'package:flutter/material.dart';
import 'features/presentation/main_page/main_page.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Viga"),
      home: const MainPage(),
    );
  }
}
