import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/app.dart';
import 'package:food_ninja/boot.dart';

void main() async {
  final override = await getOverrides();
  runApp(ProviderScope(overrides: override, child: FoodNinja()));
}
