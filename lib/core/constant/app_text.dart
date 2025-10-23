import 'package:flutter/material.dart';

import 'app_color.dart';

abstract class AppText {
  static const textstyle40Viga = TextStyle(
    fontSize: 40,
    fontFamily: 'Viga',
    color: AppColors.kPrimaryColor,
  );

  static const textstyle30Bold = TextStyle(
    fontSize: 30,
    fontFamily: 'BentonSans Bold',
    color: AppColors.kPrimaryColor,
  );

  static const textstyle19Regular = TextStyle(
    fontSize: 19,
    color: Colors.grey,
    fontFamily: 'BentonSans Regular',
  );
  static const textstyle19Bold = TextStyle(
    fontSize: 19,
    color: AppColors.kPrimaryColor,
    fontFamily: 'BentonSans Bold',
  );

  static const textstyle17Bold = TextStyle(
    fontSize: 17,
    color: Colors.white,
    fontFamily: 'BentonSans Bold',
  );

  static const textstyle14Regular = TextStyle(
    fontSize: 14,
    color: Colors.grey,
    fontFamily: 'BentonSans Regular',
  );

  static const textStyle12Thickness = TextStyle(
    fontSize: 12,
    decoration: TextDecoration.underline,
    decorationColor: AppColors.kPrimaryColor,
    decorationThickness: 3,
    color: AppColors.kPrimaryColor,
    fontFamily: 'BentonSans Medium',
  );

  static const textStyle12Bold = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontFamily: 'BentonSans Bold',
  );

  static const textStyle10Bold = TextStyle(
    fontSize: 10,
    color: AppColors.kPrimaryColor,
    fontFamily: 'BentonSans Bold',
  );
}
