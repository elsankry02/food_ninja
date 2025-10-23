import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/components/custom_text_form_field.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';
import 'package:food_ninja/features/presentation/sign_up_page/view/sign_up_page.dart';
import 'package:food_ninja/features/presentation/signup_success_notification/signup_success_notification.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import '../../via_method_page/via_method_page.dart';
import '../widget/social_connection_widget.dart';

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
                fit: BoxFit.fill,
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
                        'Login To Your Account',
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

                      SizedBox(height: context.height * 0.020),
                      Text(
                        textAlign: TextAlign.center,
                        'Or Continue With',
                        style: context.kTextTheme.titleSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialConnectionWidget(
                            onTap: () {},
                            titleSocial: 'Facebook',
                            imageSocial: AppSvgs.kFacebook,
                          ),
                          SizedBox(width: context.height * 0.021),
                          SocialConnectionWidget(
                            onTap: () {},
                            titleSocial: 'Google',
                            imageSocial: AppSvgs.kGoogle,
                          ),
                        ],
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title: 'Login',
                        style: context.kTextTheme.titleSmall!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: context.height * 0.117,
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: context.height * 0.018,
                        ),
                        backGroundColor: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(
                          context.height * 0.015,
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const SignupSuccessNotificationPage(),
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title: "Dont have an account? Sign up",
                        style: context.kTextTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                          decorationThickness: 1,
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUpPage(),
                          ),
                        ),
                      ),
                      SizedBox(height: context.height * 0.020),
                      CustomPrimaryButton(
                        title: "Forgot Your Password?",
                        style: context.kTextTheme.labelMedium!.copyWith(
                          color: AppColors.kPrimaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.kPrimaryColor,
                          decorationThickness: 1,
                        ),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ViaMethodPage(),
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
