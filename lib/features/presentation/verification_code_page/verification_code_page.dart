import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../password_page/password_page.dart';
import 'widget/verification_code_widget.dart';

class VerificationCodePage extends StatelessWidget {
  const VerificationCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Enter 4-digit\nVerification code',
            supTitel:
                'Code send to +0120430**** . This code will\nexpired in 01:30',
          ),
          SizedBox(
            height: context.height * 0.038,
          ),
          const VerificationCodeWidget(),
          SizedBox(
            height: context.height * 0.322,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PasswordPage(),
            )),
            child: CustomPrimaryButton(
              title: 'Next',
              style: context.kTextTheme.titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
              padding: EdgeInsets.symmetric(
                  horizontal: context.height * 0.060,
                  vertical: context.height * 0.018),
              backGroundColor: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(context.height * 0.015),
            ),
          ),
        ],
      ),
    );
  }
}
