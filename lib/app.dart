import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/constant/app_color.dart';
import 'features/data/cubit/change_theme_cubit.dart';
import 'features/presentation/splash_page/splash_view.dart';

class FoodNinja extends StatelessWidget {
  const FoodNinja({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChangeThemeCubit>(
      create: (context) => ChangeThemeCubit(),
      child: BlocBuilder<ChangeThemeCubit, ChangeThemeState>(
        builder: (context, state) {
          final themeIsDark = state is ThemeIsDark ? state.isDark : false;
          final themeSaved = context.read<ChangeThemeCubit>().getTheme();

          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Viga",
              scaffoldBackgroundColor: AppColors.kWhite,
              cardColor: AppColors.kWhite,
              focusColor: AppColors.kWhite,
              primaryColor: AppColors.kWhite,
              hintColor: AppColors.kBlack,
            ),
            themeMode: themeSaved ?? themeIsDark
                ? ThemeMode.dark
                : ThemeMode.light,
            darkTheme: ThemeData(
              fontFamily: "Viga",
              scaffoldBackgroundColor: Colors.black,
              cardColor: Colors.grey,
              focusColor: AppColors.kBlack,
              primaryColor: AppColors.kBlack,
              hintColor: AppColors.kWhite,
            ),
            home: const SplashView(),
          );
        },
      ),
    );
  }
}
