import 'package:flutter/material.dart';

import '../../../../../core/components/custom_home_appbar.dart';
import '../../../../../core/components/custom_populer_menu_widget.dart';
import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/components/custom_restaurant_widget.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../data/model/nearest_restaurant_model.dart';
import '../../../../data/model/populer_restaurant_card_model.dart';
import '../widgets/carousel_slider_widget.dart';
import 'nearest_restaurant_page.dart';
import 'popular_menu_page.dart';

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
              SizedBox(height: context.height * 0.020),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPrimaryButton(
                    title: 'Nearest Restaurant',
                    style: context.kTextTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomPrimaryButton(
                    title: 'View More',
                    style: context.kTextTheme.labelMedium!.copyWith(
                      color: AppColors.kSecondColor,
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NearestRestaurantPage(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.025),
              SizedBox(
                height: context.height * 0.20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: nearestRestaurantitem.length,
                  itemBuilder: (context, index) {
                    final data = nearestRestaurantitem[index];
                    return CustomRestaurantWidget(
                      margin: EdgeInsets.symmetric(
                        horizontal: context.height * 0.010,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: context.height * 0.025,
                      ),
                      title: data.title,
                      subTitle: data.subTitle,
                      image: data.image,
                      onTap: () =>
                          ErrorMessage(context, message: "COMING SOON"),
                    );
                  },
                ),
              ),
              SizedBox(height: context.height * 0.025),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomPrimaryButton(
                    title: 'Popular Menu',
                    style: context.kTextTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  CustomPrimaryButton(
                    title: 'View More',
                    style: context.kTextTheme.labelMedium!.copyWith(
                      color: AppColors.kSecondColor,
                    ),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PopularMenuPage(),
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: populerRestaurantCardModel.length,
                itemBuilder: (context, index) {
                  final data = populerRestaurantCardModel[index];
                  return CustomPopularMenuWidget(
                    title: data.title,
                    subTitle: data.subTitle,
                    image: data.image,
                    onTap: () => ErrorMessage(context, message: "COMING SOON"),
                    price: data.price,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
