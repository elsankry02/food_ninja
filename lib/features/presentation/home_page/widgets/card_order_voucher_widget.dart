import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../../cart_page/view/cart_page.dart';

class CardOrdar extends StatelessWidget {
  final String image;
  final Color backgroundColor;
  final Color specialColor;

  final Color colorOrder;
  const CardOrdar({
    super.key,
    required this.image,
    required this.backgroundColor,
    required this.colorOrder,
    required this.specialColor,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 130,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Stack(
        children: [
          Image.asset(image),
          const SizedBox(
            width: 25,
          ),
          Positioned(
            top: 17,
            left: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Special Deal For \nOctober',
                  style: AppText.textstyle17Bold.copyWith(color: specialColor),
                ),
                const SizedBox(
                  height: 14,
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CartPage(),
                    ),
                  ),
                  child: Container(
                    height: 32,
                    width: 82,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.kWhite,
                    ),
                    child: Center(
                      child: Text(
                        'Order Now',
                        style:
                            AppText.textStyle10Bold.copyWith(color: colorOrder),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
