import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../core/components/custom_icon_back.dart';
import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';
import '../../navbar_page/navbar_page.dart';
import '../../sign_up_page/view/signup_process_page.dart';
import '../widget/otp_pin_put_widget.dart';

class VerificationCodePage extends StatefulWidget {
  final bool isSelected;
  const VerificationCodePage({super.key, required this.isSelected});

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends State<VerificationCodePage> {
  final formKey = GlobalKey<FormState>();
  final pinputController = TextEditingController();

  Timer? resendOTP;
  int time = 60;

  startTimer() {
    time = 60;
    resendOTP?.cancel();
    resendOTP = Timer.periodic(Duration(seconds: 1), (timer) {
      if (time > 0) {
        setState(() {
          time--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    resendOTP?.cancel();
    pinputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          Form(
            key: formKey,
            child: ListView(
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
                          color: AppColors.kSecondaryGold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: context.height * 0.040),
                OtpPinPutWidget(
                  validator: (value) {
                    if (value == null || value.length < 6) {
                      return "Code must be 6 digits";
                    }
                    return null;
                  },
                  pinputController: pinputController,
                ),

                SizedBox(height: context.height * 0.180),

                time > 0
                    ? Text(
                        textAlign: TextAlign.center,
                        "Resend OTP in 00:$time",
                        style: context.kTextTheme.labelLarge!.copyWith(
                          color: AppColors.kGrey,
                        ),
                      )
                    : UnconstrainedBox(
                        child: CustomPrimaryButton(
                          padding: EdgeInsets.symmetric(
                            horizontal: context.height * 0.010,
                            vertical: context.height * 0.010,
                          ),
                          borderRadius: BorderRadius.circular(
                            context.height * 0.016,
                          ),
                          border: Border.all(color: AppColors.kBorder),
                          title: "Resend OTP",
                          style: context.kTextTheme.titleSmall!.copyWith(
                            color: AppColors.kSecondaryGold,
                          ),
                          onTap: () {
                            startTimer();
                          },
                        ),
                      ),

                SizedBox(height: context.height * 0.020),
                CustomPrimaryButton(
                  title: 'Verify',
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
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      if (widget.isSelected == false) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const NavBarPage(),
                          ),
                        );
                      } else {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignupProcessPage(),
                          ),
                        );
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
