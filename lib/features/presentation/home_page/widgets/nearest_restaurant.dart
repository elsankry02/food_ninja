import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import '../../../data/model/populer_restaurant_card_model.dart';
import '../../popular_menu_page/widget/populer_restaurant_card_widget.dart';
import 'home_tab_appbar.dart';

class ExploreRestaurantScreen extends StatelessWidget {
  const ExploreRestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeTabAppBar(),
          Row(
            children: [
              Container(
                height: 44,
                width: 112,
                decoration: BoxDecoration(
                  color: theme.focusColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '>10 Km',
                        style: context.kTextTheme.labelMedium!.copyWith(
                          color: AppColors.kArowBack,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset('assets/svg/Icon_Close.svg'),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                height: 44,
                width: 92,
                decoration: BoxDecoration(
                  color: theme.focusColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Soup',
                      style: context.kTextTheme.labelMedium!.copyWith(
                        color: AppColors.kArowBack,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/svg/Icon_Close.svg'),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 31),
            child: Text(
              'Nearest Restaurant',
              style: context.kTextTheme.titleSmall!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: populerRestaurantCardModel.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PopulerRestaurantCardWidget(
                  index: index,
                  right: 0,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
