import 'package:flutter/material.dart';

import 'app.dart';
import 'core/cache/cache_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.cacheIntialzation();
  runApp(const FoodNinja());
}
