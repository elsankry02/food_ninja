import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';

class PopulerMenuProfileWidget extends StatelessWidget {
  final String blurImage;
  final String imageAssets;
  final String title;
  final String subTitle;
  const PopulerMenuProfileWidget({
    super.key,
    required this.blurImage,
    required this.imageAssets,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: 142,
      height: 171,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(blurImage),
              Image.asset(imageAssets),
            ],
          ),
          Text(
            title,
            style: context.kTextTheme.titleSmall!
                .copyWith(fontWeight: FontWeight.w600),
          ),
          Text(
            subTitle,
            style: context.kTextTheme.labelMedium!.copyWith(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
