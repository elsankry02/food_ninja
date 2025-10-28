import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../extension/extension.dart';

class CustomPopularMenuWidget extends StatelessWidget {
  final String image, title, subTitle, price;
  final void Function()? onTap;
  const CustomPopularMenuWidget({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: context.height * 0.015),
      margin: EdgeInsetsDirectional.only(bottom: context.height * 0.010),
      decoration: BoxDecoration(
        color: AppColors.kWhite,
        borderRadius: BorderRadius.circular(context.height * 0.022),
        border: Border.all(color: AppColors.kBorder),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        title: Text(
          title,
          style: context.kTextTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: context.kTextTheme.labelMedium!.copyWith(color: Colors.grey),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        trailing: Text(
          "\$ $price",
          style: context.kTextTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.kSecondColor,
          ),
        ),
      ),
    );
  }
}
