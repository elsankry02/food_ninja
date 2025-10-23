import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentsContainer extends StatelessWidget {
  const PaymentsContainer({
    super.key,
    required this.imagePayment,
  });
  final String imagePayment;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      height: 73,
      width: 335,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: SvgPicture.asset(imagePayment),
      ),
    );
  }
}
