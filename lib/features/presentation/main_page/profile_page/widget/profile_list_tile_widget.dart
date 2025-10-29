import 'package:flutter/material.dart';
import '../../../../../core/components/custom_list_tile_widget.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';

class ProfileListTileWidget extends StatelessWidget {
  const ProfileListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomListTileWidget(
      leading: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(15),
        child: Image.asset(
          AppImages.kDefultPhoto,
          height: context.height * 0.070,
          width: context.height * 0.070,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        "Afsar Hossen",
        style: context.kTextTheme.titleMedium!.copyWith(
          color: AppColors.kTitle,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: Text(
        "Imshuvo97@gmail.com",
        style: context.kTextTheme.titleSmall!.copyWith(
          color: AppColors.kGrey,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
