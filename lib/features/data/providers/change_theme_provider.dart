import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_enums.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class ChangeThemeState {}

class ChangeThemeInitial extends ChangeThemeState {}

class ChangeThemeSuccess extends ChangeThemeState {
  final bool isDark;

  ChangeThemeSuccess({required this.isDark});
}

class ChangeThemeNotifier extends Notifier<ChangeThemeState> {
  @override
  ChangeThemeState build() {
    changeThemeFunc(ChangeTheme.initial);
    return ChangeThemeInitial();
  }

  changeThemeFunc(ChangeTheme changeTheme) {
    final prefs = ref.read(prefsProvider);
    switch (changeTheme) {
      case ChangeTheme.initial:
        if (prefs.getBool("changeTheme") != null) {
          if (prefs.getBool("changeTheme") == true) {
            state = ChangeThemeSuccess(isDark: true);
          } else {
            state = ChangeThemeSuccess(isDark: false);
          }
        }
        return;
      case ChangeTheme.light:
        prefs.setBool("changeTheme", true);
        state = ChangeThemeSuccess(isDark: true);
        return;
      case ChangeTheme.dark:
        prefs.setBool("changeTheme", false);
        state = ChangeThemeSuccess(isDark: false);
        return;
    }
  }
}

final changeThemeProvider =
    NotifierProvider<ChangeThemeNotifier, ChangeThemeState>(
      ChangeThemeNotifier.new,
    );
