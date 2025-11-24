import 'package:flutter/material.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(context.height * 0.015),
        child: Image.asset(
          AppImages.kDefultPhoto,
          height: context.height * 0.070,
          width: context.height * 0.070,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "Mohamed Ibarhim",
        style: context.kTextTheme.titleLarge!.copyWith(
          color: context.kChangeTheme.hintColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        "elsankary02@gmail.com",
        style: context.kTextTheme.titleMedium!.copyWith(
          color: AppColors.kGrey,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
