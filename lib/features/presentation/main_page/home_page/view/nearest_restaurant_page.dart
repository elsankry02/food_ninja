import 'package:flutter/material.dart';
import '../../../../../core/components/custom_restaurant_widget.dart';
import '../../../../data/model/nearest_restaurant_model.dart';

import '../../../../../core/components/custom_home_appbar.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class NearestRestaurantPage extends StatefulWidget {
  const NearestRestaurantPage({super.key});

  @override
  State<NearestRestaurantPage> createState() => _NearestRestaurantPageState();
}

class _NearestRestaurantPageState extends State<NearestRestaurantPage> {
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
                  child: GridView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: nearestRestaurantitem.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: context.height * 0.020,
                      crossAxisSpacing: context.height * 0.020,
                    ),
                    itemBuilder: (context, index) {
                      final data = nearestRestaurantitem[index];
                      return CustomRestaurantWidget(
                        title: data.title,
                        subTitle: data.subTitle,
                        image: data.image,
                        onTap: () =>
                            ErrorMessage(context, message: "COMING SOON"),
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
