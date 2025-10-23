import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import 'nearest_restaurant.dart';

class NavigatorNearestRestaurantWidget extends StatelessWidget {
  const NavigatorNearestRestaurantWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Nearest Restaurant',
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ExploreRestaurantScreen(),
              ),
            ),
            child: Text(
              'View More',
              style: context.kTextTheme.labelMedium!.copyWith(
                color: AppColors.kArowBackground,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.kArowBackground,
                decorationThickness: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
