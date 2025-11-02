import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../widgets/cart_details_widget.dart';
import '../widgets/cart_summary_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Cart',
                  style: context.kTextTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.kTitle,
                  ),
                ),
                SizedBox(height: context.height * 0.020),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsetsDirectional.only(
                      top: 0,
                      bottom: context.height * 0.25,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return CartDetailsWidget(
                        image: AppImages.kDefultPhoto,
                        title: "Spacy fresh crab",
                        subtitle: "Waroenk kita",
                        price: "35",
                        count: "$count",
                        plusOnTap: () {
                          setState(() {
                            count++;
                          });
                        },
                        minusOnTap: () {
                          if (count > 1) {
                            setState(() {
                              count--;
                            });
                          }
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: CartSummaryWidget(),
          ),
        ],
      ),
    );
  }
}
