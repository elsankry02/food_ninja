import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'core/constant/app_strings.dart';

import 'core/router/router.dart';
import 'l10n/app_localizations.dart';

class FoodNinja extends ConsumerWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.read(localizationProvider);

    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      locale: Locale("en"),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(fontFamily: kGilroy),
    );
  }
}
