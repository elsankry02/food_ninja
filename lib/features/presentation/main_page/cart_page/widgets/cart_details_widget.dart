import 'package:flutter/material.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class CartDetailsWidget extends StatelessWidget {
  final String image, title, subtitle, price, count;
  final void Function()? minusOnTap, plusOnTap;
  const CartDetailsWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
    this.minusOnTap,
    this.plusOnTap,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: context.height * 0.010),
      padding: EdgeInsets.symmetric(horizontal: context.height * 0.010),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.height * 0.022),
        color: AppColors.kWhite,
        border: Border.all(color: AppColors.kBorder),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(context.height * 0.016),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        title: Text(
          title,
          style: context.kTextTheme.titleSmall!.copyWith(
            color: AppColors.kTitle,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtitle,
                  style: context.kTextTheme.titleSmall!.copyWith(
                    color: AppColors.kGrey,
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: minusOnTap,
                      child: Image.asset(AppImages.kIconMinus),
                    ),
                    SizedBox(width: context.height * 0.016),
                    Text(count),
                    SizedBox(width: context.height * 0.016),
                    GestureDetector(
                      onTap: plusOnTap,
                      child: Image.asset(AppImages.kIconPlus),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "\$ $price",
              style: context.kTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.kSecondColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
