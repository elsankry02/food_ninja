import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';

class CustomPlusAndMinus extends StatelessWidget {
  const CustomPlusAndMinus({
    super.key,
    required this.minusOnTap,
    required this.count,
    required this.plusOnTap,
    required this.price,
  });

  final void Function()? minusOnTap, plusOnTap;
  final String count, price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: minusOnTap,
              child: Image.asset(AppImages.kIconMinus),
            ),
            SizedBox(width: context.height * 0.016),
            Text(
              count,
              style: context.kTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kTitle,
              ),
            ),
            SizedBox(width: context.height * 0.016),
            GestureDetector(
              onTap: plusOnTap,
              child: Image.asset(AppImages.kIconPlus),
            ),
          ],
        ),
        Text(
          price,
          style: context.kTextTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.kTitle,
          ),
        ),
      ],
    );
  }
}
