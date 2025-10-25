import 'package:flutter/material.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import 'payment_confirmation_widget.dart';

class ShowModalBottomSheetWidget extends StatelessWidget {
  const ShowModalBottomSheetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          backgroundColor: AppColors.kPrimaryColor,
          isDismissible: false,
          context: context,
          builder: (context) => PaymentConfirmationWidget(
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w500, color: AppColors.kWhite),
          ),
        );
      },
      child: CustomPrimaryButton(
        title: r'Go to Checkout $',
        style: context.kTextTheme.titleSmall!
            .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
        padding: EdgeInsets.symmetric(
            horizontal: context.height * 0.060,
            vertical: context.height * 0.018),
        backGroundColor: AppColors.kPrimaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
