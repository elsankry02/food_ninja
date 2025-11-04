import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_icon_button_pop.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class CartDetailsWidget extends StatelessWidget {
  final String image, title, subtitle, price, count;
  final void Function()? minusOnTap, plusOnTap, onPressed;
  const CartDetailsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    this.minusOnTap,
    this.plusOnTap,
    required this.count,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: context.height * 0.010),
      padding: EdgeInsets.symmetric(horizontal: context.height * 0.015),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.height * 0.022),
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.kBorder),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(context.height * 0.016),
          child: Image.asset(
            image,
            fit: BoxFit.scaleDown,
            width: context.height * 0.085,
            height: context.height * 0.085,
          ),
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.kTextTheme.titleMedium!.copyWith(
                        color: AppColors.kTitle,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: context.kTextTheme.labelLarge!.copyWith(
                        color: AppColors.kGrey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                CustomIconButton(
                  icon: Icon(Icons.close, size: context.height * 0.024),
                  onPressed: onPressed,
                ),
              ],
            ),
            SizedBox(height: context.height * 0.012),
            Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
