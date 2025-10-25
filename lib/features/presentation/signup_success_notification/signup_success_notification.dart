import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_success_notification_widget.dart';
import '../../../core/constant/app_colors.dart';
import '../../../core/constant/app_text.dart';
import '../../../core/extension/extension.dart';
import '../navbar_page/navbar_page.dart';

class SignupSuccessNotificationPage extends StatelessWidget {
  const SignupSuccessNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomSuccessNotificationWidget(),
          SizedBox(
            height: context.height * 0.033,
          ),
          const Text(
            'Congrats!',
            style: AppText.textstyle30Bold,
          ),
          SizedBox(
            height: context.height * 0.012,
          ),
          Text('Your Profile Is Ready To Use',
              style: context.kTextTheme.titleLarge!
                  .copyWith(fontWeight: FontWeight.w700)),
          SizedBox(
            height: context.height * 0.192,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NavBarPage(),
              ),
            ),
            child: UnconstrainedBox(
              child: CustomPrimaryButton(
                title: 'Try Order',
                style: context.kTextTheme.titleSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.060,
                    vertical: context.height * 0.018),
                backGroundColor: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(context.height * 0.015),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
