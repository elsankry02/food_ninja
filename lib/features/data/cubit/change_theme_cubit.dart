import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/cache/cache_helper.dart';

part 'change_theme_state.dart';

class ChangeThemeCubit extends Cubit<ChangeThemeState> {
  ChangeThemeCubit() : super(ChangeThemeInitial());

  Future<void> setChangeTheme({required bool value}) async {
    await CacheHelper.setTheme(value: value);
    emit(ThemeIsDark(isDark: value));
  }

  bool? getTheme() {
    return CacheHelper.getTheme();
  }
}
