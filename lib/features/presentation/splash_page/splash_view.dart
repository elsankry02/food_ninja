// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_ninja/core/constant/app_color.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';
import 'package:food_ninja/core/constant/app_text.dart';
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
                SvgPicture.asset(AppSvgs.kLogo),
                const Text(
                  textAlign: TextAlign.center,
                  'FoodNinja',
                  style: AppText.textstyle40Viga,
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
