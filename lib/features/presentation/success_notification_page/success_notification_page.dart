import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_success_notification_widget.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/extension/extension.dart';
import '../login_in_page/view/login_page.dart';

class SuccessNotificationPage extends StatelessWidget {
  const SuccessNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSuccessNotificationWidget(),
          SizedBox(height: context.height * 0.033),
          Text(
            'Congrats!',
            style: context.kTextTheme.headlineMedium!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: context.height * 0.012),
          Text(
            'Password reset succesful',
            style: context.kTextTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: context.height * 0.192),
          GestureDetector(
            onTap: () => Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => const LoginPage())),
            child: CustomPrimaryButton(
              title: 'Back',
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
        ],
      ),
    );
  }
}
