import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_populer_menu_widget.dart';
import 'package:food_ninja/features/data/model/nearest_restaurant_model.dart';
import 'package:food_ninja/features/data/model/populer_restaurant_card_model.dart';

import '../../../../core/components/custom_home_appbar.dart';
import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/components/custom_restaurant_widget.dart';
import '../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';
import '../../nearest_restaurant_page/view/nearest_restaurant_page.dart';
import '../../popular_menu_page/view/popular_menu_page.dart';
import '../widgets/carousel_slider_widget.dart';

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
            padding: EdgeInsets.symmetric(
              horizontal: context.height * 0.020,
              vertical: context.height * 0.050,
            ),
            physics: BouncingScrollPhysics(),
            children: [
              CustomHomeAppbar(searchController: searchController),
              CarouselSliderWidget(),
              SizedBox(height: context.height * 0.025),
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
                      color: AppColors.kArowBack,
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
                      color: AppColors.kArowBack,
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

      //     const SizedBox(height: 20),

      //     const SizedBox(height: 20),
      // const PopularCardMenuWidget(
      //   imageCard: 'assets/images/Green_Noddle.png',
      //   titelText: 'Green Noddle',
      //   supTitel: 'Noodle Home',
      //   price: r'$15',
      // ),
      //     const SizedBox(height: 20),
      //     const PopularCardMenuWidget(
      //       imageCard: 'assets/images/Fruit_Salad.png',
      //       titelText: 'Fruit Salad',
      //       supTitel: 'Wijie Resto',
      //       price: r'$5',
      //     ),
      //     const SizedBox(height: 20),
      //     const PopularCardMenuWidget(
      //       imageCard: 'assets/images/Herbal_Pancake.png',
      //       titelText: 'Herbal Pancake',
      //       supTitel: 'Warung Herbal',
      //       price: r'$7',
      //     ),
      //   ],
      // ),
    );
  }
}
