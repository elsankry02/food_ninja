import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/widgets/cart_details_widget.dart';
import 'package:food_ninja/features/presentation/main_page/cart_page/widgets/cart_summary_widget.dart';

import '../../../../../core/extension/extension.dart';

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
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            children: [
              Text(
                'Cart',
                style: context.kTextTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              SizedBox(
                height: context.height * 0.500,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
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
              SizedBox(height: context.height * 0.020),
              CartSummaryWidget(),
              SizedBox(height: context.height * 0.020),
            ],
          ),
        ],
      ),
    );
  }
}
