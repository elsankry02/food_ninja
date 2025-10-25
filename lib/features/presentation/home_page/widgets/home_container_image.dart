import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_text.dart';
import '../../cart_page/view/cart_page.dart';

class HomeContainerImage extends StatelessWidget {
  const HomeContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 360,
        height: 130,
        decoration: BoxDecoration(
          color: AppColors.kPrimaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Pattern_background.png',
              fit: BoxFit.fill,
              width: double.infinity,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/Ice_Cream.png',
                ),
                const SizedBox(
                  width: 60,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Special Deal For \nOctober',
                        style: AppText.textstyle17Bold),
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
                        child: const Center(
                          child: Text(
                            'Buy Now',
                            style: AppText.textStyle10Bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
