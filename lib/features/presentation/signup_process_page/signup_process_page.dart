import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../payment_method_page/view/payment_method_page.dart';

class SignupProcessPage extends StatelessWidget {
  const SignupProcessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Fill in your bio to get \nstarted',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          // const CustomTextFieldWidget(hintText: 'First Name'),
          // SizedBox(
          //   height: context.height * 0.020,
          // ),
          // const CustomTextFieldWidget(hintText: 'Last Name'),
          // SizedBox(
          //   height: context.height * 0.020,
          // ),
          // const CustomTextFieldWidget(hintText: 'Mobile Number'),
          SizedBox(
            height: context.height * 0.220,
          ),
          Column(
            children: [
              GestureDetector(
                  onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const PaymentMethodPage(),
                        ),
                      ),
                  child: UnconstrainedBox(
                    child: CustomPrimaryButton(
                      title: 'Next',
                      style: context.kTextTheme.titleSmall!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w700),
                      padding: EdgeInsets.symmetric(
                          horizontal: context.height * 0.060,
                          vertical: context.height * 0.018),
                      backGroundColor: AppColors.kPrimaryColor,
                      borderRadius:
                          BorderRadius.circular(context.height * 0.015),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
