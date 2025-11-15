import 'package:flutter/material.dart';
import '../../../core/extension/extension.dart';

import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_images.dart';

class SpecialDealModel {
  final String image;
  final String title;
  final String buttonTitle;
  final Color specialColor, ordernowColor;

  SpecialDealModel({
    required this.ordernowColor,
    required this.specialColor,
    required this.image,
    required this.title,
    required this.buttonTitle,
  });
}

List<SpecialDealModel> specialDealItems(BuildContext context) {
  return [
    SpecialDealModel(
      image: AppImages.kEggChickenRed,
      title: context.kAppLocalizations.specialdealforoctober,
      buttonTitle: context.kAppLocalizations.buynow,
      ordernowColor: AppColors.kSecondColor,
      specialColor: AppColors.kSecondColor,
    ),
    SpecialDealModel(
      image: AppImages.kRice,
      title: context.kAppLocalizations.specialdealforoctober,
      buttonTitle: context.kAppLocalizations.ordernow,
      ordernowColor: AppColors.kOrderNowTwo,
      specialColor: AppColors.kOrderNowTwo,
    ),
    SpecialDealModel(
      image: AppImages.kPulses,
      title: context.kAppLocalizations.specialdealforoctober,
      buttonTitle: context.kAppLocalizations.buynow,
      ordernowColor: AppColors.kSecondColor,
      specialColor: AppColors.kSecondColor,
    ),
  ];
}
