part of 'change_theme_cubit.dart';

sealed class ChangeThemeState {}

final class ChangeThemeInitial extends ChangeThemeState {}

final class ThemeIsDark extends ChangeThemeState {
  final bool isDark;

  ThemeIsDark({required this.isDark});


}
