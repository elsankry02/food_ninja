import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../verification_code_page/verification_code_page.dart';
import 'widget/via_massage.dart';

class ViaMethodPage extends StatelessWidget {
  const ViaMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
              titel: 'Forgot password?',
              supTitel:
                  'Select which contact details should we \nuse to reset your password'),
          SizedBox(
            height: context.height * 0.020,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Message.svg',
            textVia: 'Via sms:',
            subVia: '4235',
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          const ViaMassage(
            imageVia: 'assets/svg/Email.svg',
            textVia: 'Via email:',
            subVia: '@gmail.com',
          ),
          SizedBox(
            height: context.height * 0.269,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const VerificationCodePage(),
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
