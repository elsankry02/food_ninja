import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';

import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';

class LogoLoginWidget extends StatelessWidget {
  const LogoLoginWidget({super.key, required this.textSign});
  final String textSign;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          AppImages.kOnboardingPattern,
          width: double.infinity,
        ),
        Center(
          child: Column(
            children: [
              SizedBox(height: context.height * 0.047),
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
                ),
              ),
              SizedBox(height: context.height * 0.060),
              Text(
                textAlign: TextAlign.center,
                textSign,
                style: context.kTextTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
