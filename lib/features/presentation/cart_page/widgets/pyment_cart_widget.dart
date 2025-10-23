import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_text.dart';

class PaymentCart extends StatelessWidget {
  final String imagePayment;
  final Color titelcolor;
  final String titelPassword;
  final Color backgroundColor;
  const PaymentCart({
    super.key,
    required this.imagePayment,
    required this.backgroundColor,
    required this.titelPassword,
    required this.titelcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 73,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(imagePayment),
          Text(
            titelPassword,
            style: AppText.textstyle14Regular.copyWith(
              color: titelcolor,
            ),
          ),
        ],
      ),
    );
  }
}
