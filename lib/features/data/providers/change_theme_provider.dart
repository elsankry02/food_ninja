import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

abstract class ChangeThemeState {}

class ChangeThemeInitial extends ChangeThemeState {}

class ChangeThemeNotifier extends Notifier<ChangeThemeState> {
  bool currentTheme = false;

  @override
  ChangeThemeState build() {
    getTheme();
    return ChangeThemeInitial();
  }

  Future<void> setTheme({required bool value}) async {
    final prefs = ref.read(prefsProvider);
    await prefs.setBool("theme", value);
    currentTheme = value;
    state = ChangeThemeInitial();
  }

  getTheme() {
    final prefs = ref.read(prefsProvider);
    final getTheme = prefs.getBool("theme");
    currentTheme = getTheme ?? false;
    state = ChangeThemeInitial();
  }
}

final changeThemeProvider =
    NotifierProvider<ChangeThemeNotifier, ChangeThemeState>(
      ChangeThemeNotifier.new,
    );
