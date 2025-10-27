import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constant/app_colors.dart';
import '../extension/extension.dart';

class PaymentsContainer extends StatelessWidget {
  final String payment;
  final Function()? onTap;
  const PaymentsContainer({super.key, required this.payment, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.height * 0.124,
          vertical: context.height * 0.022,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kBorder),
          borderRadius: BorderRadius.circular(context.height * 0.022),
        ),
        child: Center(child: SvgPicture.asset(payment, fit: BoxFit.scaleDown)),
      ),
    );
  }
}
