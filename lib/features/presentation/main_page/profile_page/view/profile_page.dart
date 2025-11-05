import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:food_ninja/core/router/router.dart';

import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';
import '../widget/list_tile_items.dart';
import '../widget/profile_list_tile_widget.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsetsDirectional.only(
          start: context.height * 0.020,
          end: context.height * 0.020,
          top: context.height * 0.060,
        ),
        children: [
          ProfileListTileWidget(),
          SizedBox(height: context.height * 0.033),
          ListTileItems(
            title: "Personal Details",
            leadingIcon: Icons.person,
            trailingIcon: Icons.arrow_forward_ios_rounded,
            onTap: () => context.router.push(PersonalDetailsRoute()),
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
    );
  }
}
