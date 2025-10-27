import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_home_appbar.dart';
import 'package:food_ninja/core/components/custom_primary_button.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/data/model/populer_restaurant_card_model.dart';
import 'package:food_ninja/features/presentation/home_page/widgets/carousel_slider_widget.dart';
import 'package:food_ninja/features/presentation/home_page/widgets/nearest_restaurant.dart';
import 'package:food_ninja/features/presentation/popular_menu_page/widget/populer_restaurant_card_widget.dart';

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
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
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
                        builder: (context) => const ExploreRestaurantScreen(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.025),
              SizedBox(
                height: context.height * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: populerRestaurantCardModel.length,
                  itemBuilder: (context, index) {
                    return PopulerRestaurantCardWidget(index: index);
                  },
                ),
              ),
            ],
          ),
        ],
      ),

      //     const NavigatorNearestRestaurantWidget(),
      //     const SizedBox(height: 20),
      //     SizedBox(
      //       height: 184,
      //       child: ListView.builder(
      //         physics: const BouncingScrollPhysics(),
      //         padding: const EdgeInsets.only(left: 25),
      //         scrollDirection: Axis.horizontal,
      //         itemCount: populerRestaurantCardModel.length,
      //         itemBuilder: (context, index) {
      //           return PopulerRestaurantCardWidget(index: index, right: 40);
      //         },
      //       ),
      //     ),
      //     const SizedBox(height: 20),
      //     const NavigatorPopulerMenuWidget(),
      //     const SizedBox(height: 20),
      //     const PopularCardMenuWidget(
      //       imageCard: 'assets/images/Green_Noddle.png',
      //       titelText: 'Green Noddle',
      //       supTitel: 'Noodle Home',
      //       price: r'$15',
      //     ),
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
