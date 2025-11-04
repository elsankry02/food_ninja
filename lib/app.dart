import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/router/router.dart';

class FoodNinja extends ConsumerWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.read(localizationProvider);

    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Gilroy"),
    );
  }
}
