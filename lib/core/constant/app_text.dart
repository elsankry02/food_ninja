import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppText {

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
