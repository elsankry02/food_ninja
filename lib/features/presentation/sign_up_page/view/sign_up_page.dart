import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';
import 'package:food_ninja/features/presentation/otp_page/view/otp_page.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/components/custom_text_form_field.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../login_in_page/view/login_page.dart';
import '../widget/check_box_widget.dart';

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
                        'FoodNinja',
                        style: context.kTextTheme.displayMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        'Deliever Favorite Food',
                        style: context.kTextTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.060),
                      Text(
                        textAlign: TextAlign.center,
                        'Sign Up For Free',
                        style: context.kTextTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.040),
                      CustomTextFormField(
                        hintText: 'Email',
                        prefixIcon: SvgPicture.asset(
                          AppSvgs.kMessage,
                          fit: BoxFit.scaleDown,
                        ),
                        cursorColor: AppColors.kGrey,
                        hintStyle: context.kTextTheme.labelLarge!.copyWith(
                          color: Colors.grey,
                        ),
                        controller: emailController,
                      ),
                      SizedBox(height: context.height * 0.012),
                      CustomTextFormField(
                        hintText: 'Password',
                        hintStyle: context.kTextTheme.labelLarge!.copyWith(
                          color: Colors.grey,
                        ),
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
                      SizedBox(height: context.height * 0.019),
                      const CheckBoxWidget(title: 'Keep Me Signed In'),
                      SizedBox(height: context.height * 0.012),
                      const CheckBoxWidget(
                        title: 'Email Me About Special Pricing',
                      ),
                      SizedBox(height: context.height * 0.040),
                      // Create Account Button
                      CustomPrimaryButton(
                        title: 'Create Account',
                        style: context.kTextTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: context.height * 0.100,
                        ),
                        padding: EdgeInsets.symmetric(
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
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const VerificationCodePage(isSelected: true),
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title: "Already have an account? Login",
                        style: context.kTextTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                          decorationThickness: 1,
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        ),
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
