import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';

class PopularCardMenuWidget extends StatelessWidget {
  const PopularCardMenuWidget({
    super.key,
    required this.imageCard,
    required this.titelText,
    required this.supTitel,
    required this.price,
  });
  final String imageCard;
  final String titelText;
  final String supTitel;
  final String price;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 87,
        width: 323,
        decoration: BoxDecoration(
          color: theme.primaryColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          children: [
            Image.asset(imageCard),
            const SizedBox(
              width: 21,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titelText,
                  style: context.kTextTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                      color: context.kChangeTheme.hintColor),
                ),
                Text(
                  supTitel,
                  style: AppText.textstyle14Regular,
                ),
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              price,
              style: context.kTextTheme.titleLarge!.copyWith(
                  fontWeight: FontWeight.w700, color: AppColors.kGold),
            )
          ],
        ),
      ),
    );
  }
}
