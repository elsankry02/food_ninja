import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_icon_add.dart';

import '../constant/app_colors.dart';
import '../extension/extension.dart';

class CustomProductCardWidget extends StatelessWidget {
  final void Function()? onTap;
  final String image, title, subTitle, price;
  final EdgeInsetsGeometry? margin;
  final CrossAxisAlignment crossAxisAlignment;
  const CustomProductCardWidget({
    super.key,
    this.onTap,

    required this.title,
    required this.price,
    required this.image,
    required this.subTitle,
    this.margin,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: EdgeInsetsDirectional.only(
        top: context.height * 0.025,
        start: context.height * 0.014,
        end: context.height * 0.014,
        bottom: context.height * 0.016,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.height * 0.018),
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.kBorder),
      ),
      child: Column(
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Image.asset(
            image,
            fit: BoxFit.scaleDown,
            width: context.height * 0.120,
            height: context.height * 0.080,
          ),
          SizedBox(height: context.height * 0.022),
          Text(
            title,
            style: context.kTextTheme.titleMedium!.copyWith(
              color: AppColors.kTitle,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: context.height * 0.004),
          Text(
            subTitle,
            style: context.kTextTheme.labelLarge!.copyWith(
              color: AppColors.kGrey,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: context.height * 0.020),
          SizedBox(
            height: context.height * 0.050,
            width: context.height * 0.170,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  style: context.kTextTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.kTitle,
                  ),
                ),
                CustomIconAdd(onTap: onTap),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
