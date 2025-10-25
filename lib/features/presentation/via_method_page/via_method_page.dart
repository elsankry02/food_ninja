import 'package:flutter/material.dart';
import 'package:food_ninja/features/presentation/password_page/password_page.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/extension/extension.dart';
import 'widget/via_massage.dart';

class ViaMethodPage extends StatelessWidget {
  const ViaMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // const CustomTopAppBarBackNavigator(
          //     titel: 'Forgot password?',
          //     supTitel:
          //         'Select which contact details should we \nuse to reset your password'),
          SizedBox(height: context.height * 0.020),
          const ViaMassage(
            imageVia: 'assets/svg/Message.svg',
            textVia: 'Via sms:',
            subVia: '4235',
          ),
          SizedBox(height: context.height * 0.020),
          const ViaMassage(
            imageVia: 'assets/svg/Email.svg',
            textVia: 'Via email:',
            subVia: '@gmail.com',
          ),
          SizedBox(height: context.height * 0.269),
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
            ),
          ),
        ],
      ),
    );
  }
}
