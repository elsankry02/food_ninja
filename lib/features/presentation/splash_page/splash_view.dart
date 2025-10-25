// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/presentation/onboarding_page/onboarding_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    splashFoodNinja();
    super.initState();
  }

  splashFoodNinja() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => const OnboardingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kOnboardingPattern, fit: BoxFit.fill),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.kLogo),
                Text(
                  textAlign: TextAlign.center,
                  'FoodNinja',
                  style: context.kTextTheme.displayMedium!.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Deliever Favorite Food',
                  style: context.kTextTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w700,
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
