import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/components/custom_snakbar.dart';
import '../../../../core/components/custom_text_form_field.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_svgs.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/router/router.dart';
import '../widget/social_connection_widget.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isPassword = false;

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
        physics: const BouncingScrollPhysics(),
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
                        context.kAppLocalizations.foodninja,
                        style: context.kTextTheme.displayMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        context.kAppLocalizations.delieverfavoritefood,
                        style: context.kTextTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.060),
                      Text(
                        textAlign: TextAlign.center,
                        context.kAppLocalizations.logintoyouraccount,
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

                      SizedBox(height: context.height * 0.020),
                      Text(
                        textAlign: TextAlign.center,
                        context.kAppLocalizations.orcontinuewith,
                        style: context.kTextTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialConnectionWidget(
                            onTap: () => ErrorMessage(
                              context,
                              message: context.kAppLocalizations.comingsoon,
                            ),
                            titleSocial: context.kAppLocalizations.facebook,
                            imageSocial: AppSvgs.kFacebook,
                          ),
                          SizedBox(width: context.height * 0.021),
                          SocialConnectionWidget(
                            onTap: () => ErrorMessage(
                              context,
                              message: context.kAppLocalizations.comingsoon,
                            ),
                            titleSocial: context.kAppLocalizations.google,
                            imageSocial: AppSvgs.kGoogle,
                          ),
                        ],
                      ),
                      SizedBox(height: context.height * 0.020),
                      UnconstrainedBox(
                        child: CustomPrimaryButton(
                          title: context.kAppLocalizations.login,
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
                            colors: [
                              AppColors.kPrimaryColor,
                              AppColors.kSecondColor,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(
                            context.height * 0.015,
                          ),
                          onTap: () =>
                              context.router.push(OtpRoute(isSelected: false)),
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title:
                            context.kAppLocalizations.donthaveanaccountsignup,
                        style: context.kTextTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                          decorationThickness: 1,
                        ),
                        onTap: () => context.router.replace(SignUpRoute()),
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
