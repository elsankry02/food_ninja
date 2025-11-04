import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/custom_product_card_widget.dart';
import '../../../../data/models/beverages_model.dart';

import '../../../../../core/components/custom_home_appbar.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

@RoutePage()
class BeveragesPage extends StatefulWidget {
  const BeveragesPage({super.key});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
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
                  'Beverages',
                  style: context.kTextTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: context.height * 0.010),
                Expanded(
                  child: GridView.builder(
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.zero,
                    itemCount: beveragesItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisExtent: context.height * 0.280,
                      mainAxisSpacing: context.height * 0.015,
                      crossAxisSpacing: context.height * 0.015,
                    ),
                    itemBuilder: (context, index) {
                      final data = beveragesItems[index];
                      return CustomProductCardWidget(
                        image: data.image,
                        title: data.title,
                        subTitle: data.subTitle,
                        price: data.price,
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
