import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/router/router.dart';

import '../../../../../core/components/custom_snakbar.dart';
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
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground),
          ListView(
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
                title: "Orders",
                leadingIcon: FontAwesomeIcons.boxOpen,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(OrdersRoute()),
              ),
              ListTileItems(
                title: "Language",
                leadingIcon: Icons.language,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              ListTileItems(
                title: "Payment Methods",
                leadingIcon: Icons.payment,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(PaymentMethodRoute()),
              ),
              ListTileItems(
                title: "Notifecations",
                leadingIcon: Icons.notifications_none,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(NotifiactionRoute()),
              ),
              ListTileItems(
                title: "Help",
                leadingIcon: Icons.help_outline,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
              ),
              ListTileItems(
                title: "About",
                leadingIcon: Icons.info_outline,
                trailingIcon: Icons.arrow_forward_ios_rounded,
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
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: ListTileItems(
              title: "Log Out",
              backgroungColor: AppColors.kBorder,
              padding: EdgeInsets.only(left: context.height * 0.020),
              borderRadius: BorderRadius.circular(context.height * 0.019),
              textAlign: TextAlign.center,
              leadingIcon: Icons.logout,
              titleColor: AppColors.kSecondColor,
              iconColor: AppColors.kSecondColor,
              onTap: () => ErrorMessage(context, message: "COMING SOON"),
            ),
          ),
        ],
      ),
    );
  }
}
