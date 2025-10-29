import 'package:flutter/material.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../widget/list_tile_items.dart';
import '../widget/profile_list_tile_widget.dart';

import '../../../../../core/extension/extension.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.065,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              ProfileListTileWidget(),
              SizedBox(height: context.height * 0.033),
              ListTileItems(
                title: "Personal Details",
                leadingIcon: Icons.person,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              ListTileItems(
                title: "Language",
                leadingIcon: Icons.language,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              ListTileItems(
                title: "Log Out",
                leadingIcon: Icons.logout,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                titleColor: AppColors.kRed,
                iconColor: AppColors.kRed,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              ListTileItems(
                title: "Delete An Account",
                leadingIcon: Icons.delete,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                titleColor: AppColors.kRed,
                iconColor: AppColors.kRed,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
