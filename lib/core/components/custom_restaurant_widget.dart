import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../extension/extension.dart';

class CustomRestaurantWidget extends StatelessWidget {
  final EdgeInsetsGeometry? margin, padding;
  final void Function()? onTap;
  final String title, subTitle, image;

  const CustomRestaurantWidget({
    super.key,
    this.onTap,
    this.margin,
    this.padding,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.height * 0.022),
          color: AppColors.kWhite,
          border: Border.all(color: AppColors.kBorder),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: context.height * 0.073,
              width: context.height * 0.096,
              fit: BoxFit.cover,
            ),
            SizedBox(height: context.height * 0.017),
            Text(
              title,
              style: context.kTextTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: context.height * 0.004),
            Text(
              subTitle,
              style: context.kTextTheme.labelMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
