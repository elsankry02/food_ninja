import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import '../../../data/model/populer_restaurant_card_model.dart';

class PopulerRestaurantCardWidget extends StatelessWidget {
  final int index;
  final EdgeInsetsGeometry? contentPadding;
  final void Function()? onTap;
  const PopulerRestaurantCardWidget({
    super.key,
    required this.index,
    this.onTap,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    final data = populerRestaurantCardModel[index];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(),
      child: ListTile(
        contentPadding: contentPadding,
        onTap: onTap,
        title: Image.asset(data.imageCard),
        subtitle: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.titelText,
              style: context.kTextTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: context.height * 0.04),
            Text(
              data.subTitel,
              style: context.kTextTheme.labelMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
