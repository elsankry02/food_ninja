import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/features/data/providers/localization.dart';

import 'core/constant/app_strings.dart';
import 'core/router/router.dart';
import 'l10n/app_localizations.dart';

class FoodNinja extends ConsumerWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(localizationProvider);
    final locale = state is LocalizationSuccess
        ? Locale(state.isSelectedLang)
        : const Locale("ar");
    return MaterialApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
      locale: locale,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(fontFamily: kGilroy),
    );
  }
}
