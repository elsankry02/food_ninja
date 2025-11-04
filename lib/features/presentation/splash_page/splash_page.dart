// ignore_for_file: use_build_context_synchronously
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/core/router/router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    splashFoodNinja();
    super.initState();
  }

  splashFoodNinja() {
    Future.delayed(const Duration(seconds: 2), () {
      context.router.replace(OnboardingRoute());
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
                  style: context.kTextTheme.displayLarge!.copyWith(
                    color: AppColors.kPrimaryColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Deliever Favorite Food',
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
