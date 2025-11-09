import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../core/components/custom_home_appbar.dart';
import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/components/custom_product_card_widget.dart';
import '../../../../../core/components/custom_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../../core/router/router.dart';
import '../../../../data/models/beverages_model.dart';
import '../../../../data/models/groceries_model.dart';
import '../widgets/carousel_slider_widget.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchController = TextEditingController();
  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            children: [
              CustomHomeAppbar(searchController: searchController),
              SizedBox(height: context.height * 0.020),
              CarouselSliderWidget(),
              SizedBox(height: context.height * 0.030),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPrimaryButton(
                    title: 'Beverages',
                    style: context.kTextTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomPrimaryButton(
                    title: 'See all',
                    style: context.kTextTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kSecondColor,
                    ),
                    onTap: () => context.router.push(BeveragesRoute()),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              SizedBox(
                height: context.height * 0.280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    final data = beveragesItems[index];
                    return CustomProductCardWidget(
                      image: data.image,
                      title: data.title,
                      subTitle: data.subTitle,
                      price: data.price,
                      margin: EdgeInsetsDirectional.only(
                        end: context.height * 0.015,
                      ),
                      onTap: () =>
                          ErrorMessage(context, message: "COMING SOON"),
                    );
                  },
                ),
              ),
              SizedBox(height: context.height * 0.030),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPrimaryButton(
                    title: 'Groceries',
                    style: context.kTextTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomPrimaryButton(
                    title: 'See all',
                    style: context.kTextTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.kSecondColor,
                    ),
                    onTap: () => context.router.push(GroceriesRoute()),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              SizedBox(
                height: context.height * 0.280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    final data = groceriesModel[index];
                    return CustomProductCardWidget(
                      image: data.image,
                      title: data.title,
                      subTitle: data.subTitle,
                      price: data.price,
                      margin: EdgeInsetsDirectional.only(
                        end: context.height * 0.015,
                      ),
                      onTap: () =>
                          ErrorMessage(context, message: "COMING SOON"),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
