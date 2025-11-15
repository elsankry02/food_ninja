import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../../core/router/router.dart';

class CartSummaryWidget extends StatelessWidget {
  const CartSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(context.height * 0.015),
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AppImages.kPatternButtonSheet),
            ),
            gradient: LinearGradient(
              colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(context.height * 0.022),
              topRight: Radius.circular(context.height * 0.022),
            ),
          ),
          child: Column(
            children: [
              BuildRowWidget(
                title: context.kAppLocalizations.subtotal,
                subTitle: '120',
                titleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
                subTitleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
              ),
              BuildRowWidget(
                title: context.kAppLocalizations.deliverycharge,
                subTitle: '10',
                titleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
                subTitleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
              ),
              BuildRowWidget(
                title: context.kAppLocalizations.discount,
                subTitle: '20',
                titleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
                subTitleStyle: context.kTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
              ),
              SizedBox(height: context.height * 0.010),
              BuildRowWidget(
                title: context.kAppLocalizations.total,
                subTitle: '150',
                titleStyle: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
                subTitleStyle: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              CustomPrimaryButton(
                title: context.kAppLocalizations.confirmorder,
                style: context.kTextTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kSecondColor,
                ),
                padding: EdgeInsets.symmetric(vertical: context.height * 0.020),
                backGroundColor: AppColors.kWhite,
                borderRadius: BorderRadius.circular(context.height * 0.015),
                onTap: () => context.router.push(ConfirmOrderRoute()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BuildRowWidget extends StatelessWidget {
  final String title, subTitle;
  final TextStyle? titleStyle, subTitleStyle;
  const BuildRowWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleStyle,
    this.subTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: titleStyle),
        Text("\$$subTitle", style: subTitleStyle),
      ],
    );
  }
}
