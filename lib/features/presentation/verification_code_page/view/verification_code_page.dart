import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_icon_back.dart';
import 'package:food_ninja/core/constant/app_images.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import '../../password_page/password_page.dart';
import '../widget/verification_code_widget.dart';

class VerificationCodePage extends StatelessWidget {
  final bool isSelected;
  const VerificationCodePage({super.key, required this.isSelected});

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
                'Enter 6-digit Verify code',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the OTP code sent to your email",
                      style: context.kTextTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.kGrey,
                      ),
                    ),
                    TextSpan(
                      text: "\nelsankry02@gmail.com",
                      style: context.kTextTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.kGold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: context.height * 0.040),
              const VerificationCodeWidget(),
              SizedBox(height: context.height * 0.040),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PasswordPage()),
                ),
                child: CustomPrimaryButton(
                  title: 'Next',
                  style: context.kTextTheme.titleSmall!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: context.height * 0.115,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: context.height * 0.018,
                  ),
                  gradient: const LinearGradient(
                    begin: AlignmentGeometry.topLeft,
                    end: AlignmentGeometry.bottomRight,
                    colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
                  ),
                  borderRadius: BorderRadius.circular(context.height * 0.015),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
