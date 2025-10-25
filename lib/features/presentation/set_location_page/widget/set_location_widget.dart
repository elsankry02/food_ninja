import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';

class SetLocationWidget extends StatelessWidget {
  const SetLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.height * 0.010),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(context.height * 0.022),
        border: Border.all(color: AppColors.kBorder),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: context.height * 0.020,
              left: context.height * 0.010,
            ),
            child: Row(
              children: [
                Image.asset(AppImages.kIconLocation),
                SizedBox(width: context.height * 0.014),
                Text('Your Location', style: context.kTextTheme.titleSmall),
              ],
            ),
          ),
          SizedBox(height: context.height * 0.027),
          Container(
            padding: EdgeInsets.symmetric(vertical: context.height * 0.021),
            decoration: BoxDecoration(
              color: AppColors.kBorder,
              borderRadius: BorderRadius.circular(context.height * 0.015),
            ),
            child: Center(
              child: Text(
                'Set Location',
                style: context.kTextTheme.titleSmall!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
