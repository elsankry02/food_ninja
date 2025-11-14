import 'package:flutter/material.dart';
import '../../../../../core/constant/app_colors.dart';

import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class MessageTileWidget extends StatelessWidget {
  final String title, subTitle, time;
  final void Function()? onTap;
  const MessageTileWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.time,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.kBorder)),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(context.height * 0.090),
          child: Image.asset(AppImages.kDefultPhoto),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.kTextTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              time,
              style: context.kTextTheme.labelMedium!.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
        subtitle: Text(
          subTitle,
          style: context.kTextTheme.labelMedium!.copyWith(color: Colors.grey),
        ),
      ),
    );
  }
}
