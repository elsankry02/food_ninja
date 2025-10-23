import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_svgs.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_text_form_field.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/extension/extension.dart';
import '../sign_in_page/sign_in_page.dart';
import '../sign_in_page/widget/logo_login_widget.dart';
import '../signup_process_page/signup_process_page.dart';
import 'widget/circular_check_mark_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  bool isPassword = false;

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const LogoLoginWidget(textSign: 'Sign Up For Free'),
          SizedBox(height: context.height * 0.040),
          CustomTextFormField(
            hintText: 'Anamwp . . |',
            hintStyle: context.kTextTheme.labelLarge!.copyWith(
              color: Colors.grey,
            ),
            suffixIcon: SvgPicture.asset(
              height: context.height * 0.024,
              width: context.height * 0.024,
              AppSvgs.kProfile,
              colorFilter: ColorFilter.mode(
                AppColors.kPrimaryColor,
                BlendMode.colorBurn,
              ),
            ),
            controller: usernameController,
          ),
          SizedBox(height: context.height * 0.012),
          CustomTextFormField(
            hintText: 'Email',
            suffixIcon: SvgPicture.asset(AppSvgs.kMessageTwo),
            cursorColor: AppColors.kGrey,
            hintStyle: context.kTextTheme.labelLarge!.copyWith(
              color: Colors.grey,
            ),
            controller: emailController,
          ),
          SizedBox(height: context.height * 0.012),
          //! Password
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
            child: TextField(
              obscureText: isPassword ? false : true,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  color: Colors.grey,
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: context.height * 0.017,
                  horizontal: context.height * 0.020,
                ),
                prefixIcon: UnconstrainedBox(
                  child: SvgPicture.asset(
                    'assets/svg/Lock.svg',
                    height: context.height * 0.024,
                    width: context.height * 0.024,
                  ),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  child: Icon(
                    isPassword ? Icons.visibility : Icons.visibility_off,
                    color: isPassword
                        ? AppColors.kPrimaryColor
                        : AppColors.kGrey,
                  ),
                ),
                filled: true,
                fillColor: context.kChangeTheme.primaryColor,
                enabledBorder: signupBorder(context.kChangeTheme.primaryColor),
                focusedBorder: signupBorder(context.kChangeTheme.primaryColor),
              ),
            ),
          ),
          SizedBox(height: context.height * 0.019),
          const CircularCheckMarkWidget(textCheck: 'Keep Me Signed In'),
          SizedBox(height: context.height * 0.012),
          const CircularCheckMarkWidget(
            textCheck: 'Email Me About Special Pricing',
          ),
          SizedBox(height: context.height * 0.040),
          Column(
            children: [
              //! bottom
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SignupProcessPage(),
                  ),
                ),
                child: UnconstrainedBox(
                  child: CustomPrimaryButton(
                    title: 'Create Account',
                    style: context.kTextTheme.titleSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.060,
                      vertical: context.height * 0.018,
                    ),
                    backGroundColor: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(context.height * 0.015),
                  ),
                ),
              ),
              SizedBox(height: context.height * 0.020),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignInPage()),
                ),
                child: const Text(
                  textAlign: TextAlign.center,
                  "already have an account?",
                  style: AppText.textStyle12Thickness,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  OutlineInputBorder signupBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(context.height * 0.015),
      borderSide: BorderSide(color: color),
    );
  }
}
