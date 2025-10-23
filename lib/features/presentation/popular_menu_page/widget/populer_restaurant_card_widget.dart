import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import '../../../data/model/populer_restaurant_card_model.dart';

class PopulerRestaurantCardWidget extends StatelessWidget {
  final int index;
  final double right;
  const PopulerRestaurantCardWidget({
    super.key,
    required this.index,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final restaurantCardItem = populerRestaurantCardModel[index];
    return Padding(
      padding: EdgeInsets.only(right: right),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(restaurantCardItem.imageCard),
          const SizedBox(
            height: 17,
          ),
          Text(
            restaurantCardItem.titelText,
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w600, color: theme.hintColor),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            restaurantCardItem.titelText,
            style: context.kTextTheme.labelMedium!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
