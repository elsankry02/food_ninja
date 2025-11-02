import 'package:flutter/material.dart';

import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../data/model/special_deal_model.dart';

class SpecialDealForOctoberWidget extends StatelessWidget {
  final void Function()? onTap;
  final int index;
  const SpecialDealForOctoberWidget({
    super.key,
    this.onTap,
    required this.index,
  });
  @override
  Widget build(BuildContext context) {
    final data = specialDealItems[index];
    return Stack(
      children: [
        Image.asset(data.image),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              children: [
                CustomPrimaryButton(
                  margin: EdgeInsetsDirectional.only(
                    top: context.height * 0.008,
                    end: context.height * 0.020,
                  ),
                  title: data.title,
                  style: context.kTextTheme.titleMedium!.copyWith(
                    color: data.specialColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                CustomPrimaryButton(
                  title: data.buttonTitle,
                  backGroundColor: AppColors.kWhite,
                  borderRadius: BorderRadius.circular(context.height * 0.006),
                  padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.020,
                    vertical: context.height * 0.010,
                  ),
                  margin: EdgeInsetsDirectional.only(
                    top: context.height * 0.010,
                    end: context.height * 0.020,
                  ),
                  style: context.kTextTheme.labelSmall!.copyWith(
                    color: data.ordernowColor,
                    fontWeight: FontWeight.w700,
                  ),
                  onTap: onTap,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
