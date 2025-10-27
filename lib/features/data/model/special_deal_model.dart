import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';

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

List<SpecialDealModel> specialDealItems = [
  SpecialDealModel(
    image: AppImages.kFrameSpecialDealForOctoberOne,
    title: "Special Deal For \nOctober",
    buttonTitle: "Buy Now",
    ordernowColor: AppColors.kSecondColor,
    specialColor: AppColors.kWhite,
  ),
  SpecialDealModel(
    image: AppImages.kFrameSpecialDealForOctoberTwo,
    title: "Special Deal For \nOctober",
    buttonTitle: "Order Now",
    ordernowColor: AppColors.kOrderNowTwo,
    specialColor: AppColors.kOrderNowTwo,
  ),
];
