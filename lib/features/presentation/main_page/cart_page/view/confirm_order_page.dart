import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../core/components/custom_icon_back.dart';
import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_svgs.dart';
import 'edit_payment_page.dart';
import 'edit_location_page.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';

class ConfirmOrderPage extends StatelessWidget {
  const ConfirmOrderPage({super.key});

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
              top: context.height * 0.060,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
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
                'Confirm Order',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              Container(
                padding: EdgeInsets.all(context.height * 0.020),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColors.kWhite,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Deliver To",
                          style: context.kTextTheme.labelLarge!.copyWith(
                            color: AppColors.kGrey,
                          ),
                        ),
                        CustomPrimaryButton(
                          title: "Edit",
                          style: context.kTextTheme.labelLarge!.copyWith(
                            color: AppColors.kSecondColor,
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const EditLocationPage(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.020),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(AppImages.kIconLocation),
                        Expanded(
                          child: Text(
                            "4517 Washington Ave. Manchester, Kentucky 39495",
                            textAlign: TextAlign.center,
                            style: context.kTextTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w500,
                              color: AppColors.kTitle,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.height * 0.020),
              Container(
                padding: EdgeInsets.all(context.height * 0.020),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: AppColors.kWhite,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Payment Method",
                          style: context.kTextTheme.labelLarge!.copyWith(
                            color: AppColors.kGrey,
                          ),
                        ),
                        CustomPrimaryButton(
                          title: "Edit",
                          style: context.kTextTheme.labelLarge!.copyWith(
                            color: AppColors.kSecondColor,
                          ),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const PaymentMethodPage(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: context.height * 0.020),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(AppSvgs.kVisa, fit: BoxFit.scaleDown),
                        Text(
                          "2121 6352 8465 ****",
                          style: context.kTextTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.kTitle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
