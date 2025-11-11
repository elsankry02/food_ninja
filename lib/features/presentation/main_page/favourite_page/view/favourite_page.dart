import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_primary_button.dart';
import 'package:food_ninja/core/components/custom_snakbar.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/core/router/router.dart';
import 'package:food_ninja/features/data/models/beverages_model.dart';
import 'package:food_ninja/features/presentation/main_page/favourite_page/widget/favourite_details_widget.dart';

@RoutePage()
class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

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
              children: [
                CustomPrimaryButton(
                  title: "Favourite",
                  padding: EdgeInsetsDirectional.only(
                    bottom: context.height * 0.025,
                  ),
                  border: Border(
                    bottom: BorderSide(color: AppColors.kBorder, width: 2),
                  ),
                  style: context.kTextTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.kTitle,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsetsDirectional.only(
                      top: context.height * 0.0,
                      bottom: context.height * 0.080,
                    ),
                    itemCount: beveragesItems.length,
                    itemBuilder: (context, index) {
                      final data = beveragesItems[index];
                      return FavouriteDetailsWidget(
                        image: data.image,
                        title: data.title,
                        subtitle: data.subTitle,
                        price: data.price,
                        onTap: () => context.router.push(
                          ProductDetailsRoute(
                            image: data.image,
                            title: data.title,
                            subTitle: data.subTitle,
                            price: data.price,
                            description: data.description,
                          ),
                        ),
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
            child: CustomPrimaryButton(
              title: "Add All To Cart",
              style: context.kTextTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kWhite,
              ),
              padding: EdgeInsets.symmetric(vertical: context.height * 0.020),
              gradient: LinearGradient(
                colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
              ),
              borderRadius: BorderRadius.circular(context.height * 0.015),
              onTap: () => ErrorMessage(context, message: "COMING SOON"),
            ),
          ),
        ],
      ),
    );
  }
}
