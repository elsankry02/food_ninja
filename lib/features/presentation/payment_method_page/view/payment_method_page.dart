import 'package:flutter/material.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/components/custom_top_appbar_widget.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import '../../upload_photo_page/upload_photo_page.dart';
import '../widget/payment_container_widget.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Payment Method',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          const SizedBox(
            height: 47,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/visa.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/paypal.svg',
          ),
          const SizedBox(
            height: 20,
          ),
          const PaymentsContainer(
            imagePayment: 'assets/svg/Payoneer.svg',
          ),
          const SizedBox(
            height: 190,
          ),
          GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpLoadPhotoPage(),
                  )),
              child: UnconstrainedBox(
                child: CustomPrimaryButton(
                  title: 'Next',
                  style: context.kTextTheme.titleSmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  padding: EdgeInsets.symmetric(
                      horizontal: context.height * 0.060,
                      vertical: context.height * 0.018),
                  backGroundColor: AppColors.kPrimaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
              )),
        ],
      ),
    );
  }
}
