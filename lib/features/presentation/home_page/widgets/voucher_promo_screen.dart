import 'package:flutter/material.dart';

import '../../../../core/components/custom_main_appbar_widget.dart';
import '../../../../core/constant/app_colors.dart';
import 'card_order_voucher_widget.dart';

class VoucherPromoScreen extends StatelessWidget {
  const VoucherPromoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainAppBarWidget(
              titelAppBarPage: 'Voucher Promo',
            ),
            CardOrdar(
              image: 'assets/images/Girl_Eat_Image.png',
              backgroundColor: AppColors.kPrimaryColor,
              colorOrder: Color(0xff009C51),
              specialColor: AppColors.kWhite,
            ),
            SizedBox(
              height: 20,
            ),
            CardOrdar(
              image: 'assets/images/Image_Order.png',
              backgroundColor: Color(0xffE9F7BA),
              colorOrder: Color(0xff6B3A5B),
              specialColor: Color(0xff6B3A5B),
            ),
          ],
        ),
      ),
    );
  }
}
