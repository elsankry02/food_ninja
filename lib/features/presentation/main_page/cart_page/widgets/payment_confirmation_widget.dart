import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';
import 'payment_cart_screen.dart';

class PaymentConfirmationWidget extends StatelessWidget {
  const PaymentConfirmationWidget({super.key, required this.style});

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 22, right: 22, top: 20),
      height: 206,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/Buttom_Sheet_Pattern.png'),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub-Total', style: style),
              Text(r'120 $', style: style),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Delivery Charge', style: style),
              Text(r'10 $', style: style),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount', style: style),
              Text(r'20 $', style: style),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                // style:
                // AppText.textstyle19Bold.copyWith(color: AppColors.kWhite),
              ),
              Text(
                r'150$',
                // style:
                // AppText.textstyle19Bold.copyWith(color: AppColors.kWhite),
              ),
            ],
          ),
          const SizedBox(height: 15),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PaymentCartScreen(),
              ),
            ),
            child: Container(
              width: 325,
              height: 57,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.kWhite,
              ),
              child: Center(
                child: Text(
                  'Place My Order',
                  style: context.kTextTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.kPrimaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
