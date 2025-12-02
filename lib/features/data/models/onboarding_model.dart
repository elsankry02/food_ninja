import 'package:flutter/material.dart';
import '../../../core/extension/extension.dart';

import '../../../core/constant/app_images.dart';

class OnBoardingModel {
  final String image;
  final String title;
  final String subTitle;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
  });
}

List<OnBoardingModel> onboardingItems(BuildContext context) {
  return [
    OnBoardingModel(
      image: AppImages.kOnboardingOne,
      title: context.kAppLocalizations.onboardingtitleone,
      subTitle: context.kAppLocalizations.onboardingsubtitleone,
    ),
    OnBoardingModel(
      image: AppImages.kOnboardingTwo,
      title: context.kAppLocalizations.onboardingtitletwo,
      subTitle: context.kAppLocalizations.onboardingsubtitletwo,
    ),
  ];
}
