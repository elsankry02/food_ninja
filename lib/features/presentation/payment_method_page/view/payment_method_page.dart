import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_icon_back.dart';
import 'package:food_ninja/core/components/custom_payment_widget.dart';
import 'package:food_ninja/core/components/custom_primary_button.dart';
import 'package:food_ninja/core/components/custom_show_top_snakbar.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';
import 'package:food_ninja/features/presentation/set_location_page/view/set_location_page.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.050,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconBack(
                    icon: Image.asset(
                      AppImages.kIconBack,
                      fit: BoxFit.scaleDown,
                      height: context.height * 0.045,
                      width: context.height * 0.045,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              Text(
                'Payment Method',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              Text(
                'This data will be displayed in your account \nprofile for security',
                style: context.kTextTheme.labelMedium,
              ),
              SizedBox(height: context.height * 0.047),
              PaymentsContainer(
                payment: AppSvgs.kPaypal,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              SizedBox(height: context.height * 0.020),
              PaymentsContainer(
                payment: AppSvgs.kVisa,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              SizedBox(height: context.height * 0.020),
              PaymentsContainer(
                payment: AppSvgs.kPayoneer,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              SizedBox(height: context.height * 0.190),
              CustomPrimaryButton(
                title: 'Next',
                style: context.kTextTheme.titleSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: context.height * 0.109,
                ),
                padding: EdgeInsets.symmetric(vertical: context.height * 0.018),
                gradient: const LinearGradient(
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                  colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
                ),
                borderRadius: BorderRadius.circular(context.height * 0.015),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SetLocationPage(),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
