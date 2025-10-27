import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_populer_menu_widget.dart';

import '../../../../core/components/custom_home_appbar.dart';
import '../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';
import '../../../data/model/populer_restaurant_card_model.dart';

class PopularMenuPage extends StatefulWidget {
  const PopularMenuPage({super.key});

  @override
  State<PopularMenuPage> createState() => _PopularMenuPageState();
}

class _PopularMenuPageState extends State<PopularMenuPage> {
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
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHomeAppbar(searchController: searchController),
                SizedBox(height: context.height * 0.020),
                Text(
                  'Nearest Restaurant',
                  style: context.kTextTheme.titleSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: context.height * 0.010),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: populerRestaurantCardModel.length,
                    itemBuilder: (context, index) {
                      final data = populerRestaurantCardModel[index];
                      return CustomPopularMenuWidget(
                        title: data.title,
                        subTitle: data.subTitle,
                        image: data.image,
                        onTap: () =>
                            ErrorMessage(context, message: "COMING SOON"),
                        price: data.price,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
