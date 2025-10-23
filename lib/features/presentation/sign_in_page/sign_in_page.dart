import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/extension/extension.dart';
import '../signup_success_notification/signup_success_notification.dart';
import '../via_method_page/via_method_page.dart';
import 'widget/logo_login_widget.dart';
import 'widget/social_connection_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const LogoLoginWidget(
            textSign: 'Login To Your Account',
          ),
          SizedBox(
            height: context.height * 0.040,
          ),
          // const CustomTextFieldWidget(
          //   hintText: 'Email',
          // ),
          SizedBox(
            height: context.height * 0.012,
          ),
          // const CustomTextFieldWidget(
          //   hintText: 'Password',
          // ),
          SizedBox(
            height: context.height * 0.020,
          ),
          Text(
            textAlign: TextAlign.center,
            'Or Continue With',
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SocialConnectionWidget(
                textSocial: 'Facebook',
                imageSocial: 'assets/svg/facebook.svg',
              ),
              SizedBox(
                width: context.height * 0.021,
              ),
              const SocialConnectionWidget(
                textSocial: 'Google',
                imageSocial: 'assets/svg/google.svg',
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ViaMethodPage(),
              ),
            ),
            child: const Text(
              textAlign: TextAlign.center,
              "Forgot Your Password?",
              style: AppText.textStyle12Thickness,
            ),
          ),
          SizedBox(
            height: context.height * 0.035,
          ),
          SizedBox(
            width: context.height * 0.157,
            child: GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignupSuccessNotificationPage(),
                ),
              ),
              child: UnconstrainedBox(
                child: CustomPrimaryButton(
                  title: 'Login',
                  style: context.kTextTheme.titleSmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.060,
                      vertical: context.height * 0.018),
                  backGroundColor: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(context.height * 0.015),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
