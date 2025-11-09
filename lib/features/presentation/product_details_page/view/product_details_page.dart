import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/presentation/product_details_page/widget/product_details_appbar_widget.dart';

@RoutePage()
class ProductDetailsPage extends StatelessWidget {
  final String image;
  const ProductDetailsPage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kOnboardingPattern),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            children: [
              ProductDetailsAppbarWidget(),
              Image.asset(
                image,
                fit: BoxFit.fitHeight,
                height: context.height * 0.200,
                width: context.height * 0.230,
              ),
              SizedBox(height: context.height * 0.020),
            ],
          ),
        ],
      ),
    );
  }
}
