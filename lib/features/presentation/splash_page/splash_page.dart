// ignore_for_file: use_build_context_synchronously
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/core/router/router.dart';
import 'package:food_ninja/features/data/providers/provider.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    splashFoodNinja();
    super.initState();
  }

  splashFoodNinja() {
    Future.delayed(const Duration(seconds: 2), () {
      final isSaved = ref.read(prefsProvider).getBool("isSaved");

      if (isSaved == true) {
        context.router.replace(SignUpRoute());
      } else {
        context.router.replace(OnboardingRoute());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kOnboardingPattern, fit: BoxFit.cover),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.kLogo),
                Text(
                  textAlign: TextAlign.center,
                  context.kAppLocalizations.foodninja,
                  style: context.kTextTheme.displayLarge!.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  context.kAppLocalizations.delieverfavoritefood,
                  style: context.kTextTheme.labelMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.kTitle,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
