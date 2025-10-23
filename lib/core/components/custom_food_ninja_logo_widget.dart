import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';

import '../constant/app_text.dart';
import '../extension/extension.dart';

class CustomFoodNinjaLogoWidget extends StatelessWidget {
  const CustomFoodNinjaLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("AppImages.kPattern", fit: BoxFit.fill),
          SvgPicture.asset(height: 150, AppSvgs.kLogo),
          const Text(
            textAlign: TextAlign.center,
            'FoodNinja',
            style: AppText.textstyle40Viga,
          ),
          Text(
            textAlign: TextAlign.center,
            'Deliever Favorite Food',
            style: context.kTextTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
