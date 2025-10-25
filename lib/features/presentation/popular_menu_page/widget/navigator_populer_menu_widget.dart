import 'package:flutter/material.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../view/popular_menu_page.dart';

class NavigatorPopulerMenuWidget extends StatelessWidget {
  const NavigatorPopulerMenuWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Popular Menu',
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const PopularMenuPage(),
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
