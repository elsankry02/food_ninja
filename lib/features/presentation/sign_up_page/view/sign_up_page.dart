import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/components/custom_text_form_field.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_svgs.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/router/router.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isPassword = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Image.asset(
                fit: BoxFit.cover,
                AppImages.kOnboardingPattern,
                width: double.infinity,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(context.height * 0.020),
                  child: Column(
                    children: [
                      SizedBox(height: context.height * 0.047),
                      Image.asset(AppImages.kLogo),
                      Text(
                        textAlign: TextAlign.center,
                        "FoodNinja",
                        style: context.kTextTheme.displayLarge!.copyWith(
                          color: AppColors.kPrimaryColor,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        "Deliever Favorite Food",
                        style: context.kTextTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.kTitle,
                        ),
                      ),
                      SizedBox(height: context.height * 0.060),
                      Text(
                        textAlign: TextAlign.center,
                        context.kAppLocalizations.signupforfree,
                        style: context.kTextTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.040),
                      CustomTextFormField(
                        hintText: context.kAppLocalizations.email,
                        prefixIcon: SvgPicture.asset(
                          AppSvgs.kMessage,
                          fit: BoxFit.scaleDown,
                        ),
                        cursorColor: AppColors.kGrey,
                        hintStyle: context.kTextTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        enabledBorderColor: AppColors.kBorder,
                        focusedBorderColor: AppColors.kBorder,
                        controller: emailController,
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomTextFormField(
                        hintText: context.kAppLocalizations.password,
                        hintStyle: context.kTextTheme.labelLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                        enabledBorderColor: AppColors.kBorder,
                        focusedBorderColor: AppColors.kBorder,
                        prefixIcon: SvgPicture.asset(
                          AppSvgs.kLock,
                          fit: BoxFit.scaleDown,
                        ),
                        cursorColor: AppColors.kGrey,
                        controller: passwordController,
                        obscureText: isPassword ? false : true,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          child: Icon(
                            isPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: isPassword
                                ? AppColors.kPrimaryColor
                                : AppColors.kPrimaryColor,
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.060),
                      UnconstrainedBox(
                        child: CustomPrimaryButton(
                          title: context.kAppLocalizations.createaccount,
                          style: context.kTextTheme.titleMedium!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: context.height * 0.026,
                            vertical: context.height * 0.018,
                          ),
                          gradient: const LinearGradient(
                            begin: AlignmentGeometry.topLeft,
                            end: AlignmentGeometry.bottomRight,
                            colors: [
                              AppColors.kPrimaryColor,
                              AppColors.kSecondColor,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(
                            context.height * 0.015,
                          ),
                          onTap: () =>
                              context.router.push(OtpRoute(isSelected: true)),
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title:
                            context.kAppLocalizations.alreadyhaveanaccountlogin,
                        style: context.kTextTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                          decorationThickness: 1,
                        ),
                        onTap: () => context.router.replace(LoginRoute()),
                      ),
                    ],
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
