import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_enums.dart';

import '../../../../core/components/custom_icon_button_pop.dart';
import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/router/router.dart';
import '../widget/otp_pin_put_widget.dart';

@RoutePage()
class OtpPage extends StatefulWidget {
  final bool isSelected;
  final TextEditingController phoneController, emailController;
  final ContentTybe contentTybe;
  const OtpPage({
    super.key,
    required this.isSelected,
    required this.contentTybe,
    required this.phoneController,
    required this.emailController,
  });

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final formKey = GlobalKey<FormState>();
  ContentTybe contentTybe = ContentTybe.email;
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
                top: context.height * 0.060,
              ),
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
                      onPressed: () => context.router.maybePop(),
                    ),
                  ],
                ),
                SizedBox(height: context.height * 0.020),
                Text(
                  context.kAppLocalizations.enter6digitverifycode,
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
                        text: context
                            .kAppLocalizations
                            .entertheotpcodesenttoyouremail,
                        style: context.kTextTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.kGrey,
                        ),
                      ),
                      TextSpan(
                        text:
                            "\n${contentTybe == ContentTybe.email ? widget.emailController.text.trim() : widget.phoneController.text.trim()}",
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
                      return context.kAppLocalizations.codemustbe6digits;
                    }
                    return null;
                  },
                  pinputController: pinputController,
                ),
                SizedBox(height: context.height * 0.180),
                time > 0
                    ? Text(
                        textAlign: TextAlign.center,
                        "${context.kAppLocalizations.resendOtpPrefix}$time",
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
                          title: context.kAppLocalizations.resendotp,
                          style: context.kTextTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: AppColors.kSecondaryGold,
                          ),
                          onTap: () => startTimer(),
                        ),
                      ),

                SizedBox(height: context.height * 0.020),
                UnconstrainedBox(
                  child: CustomPrimaryButton(
                    title: context.kAppLocalizations.verify,
                    style: context.kTextTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.060,
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
                          context.router.replace(MainRoute());
                        } else {
                          context.router.push(SignupProcessRoute());
                        }
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
