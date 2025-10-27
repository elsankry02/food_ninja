import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import '../../../data/model/populer_restaurant_card_model.dart';
import '../../popular_menu_page/widget/populer_restaurant_card_widget.dart';
import '../widgets/show_model_bottom_sheet_widget.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/PatternTopRight.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Text(
                      'Cart',
                      style: context.kTextTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                        color: context.kChangeTheme.hintColor,
                      ),
                    ),
                    SizedBox(
                      height: 700,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            ),
                        itemCount: populerRestaurantCardModel.length,
                        itemBuilder: (context, index) {
                          return PopulerRestaurantCardWidget(index: index);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: ShowModalBottomSheetWidget(),
          ),
        ],
      ),
    );
  }
}
