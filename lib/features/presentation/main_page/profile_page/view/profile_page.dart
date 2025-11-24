import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/features/presentation/main_page/profile_page/widget/language_widget.dart';
import 'package:food_ninja/features/presentation/main_page/profile_page/widget/theme_widget.dart';

import '../../../../../core/components/custom_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../../core/router/router.dart';
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
              bottom: context.height * 0.080,
            ),
            children: [
              ProfileListTileWidget(),
              SizedBox(height: context.height * 0.030),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.personaldetails,
                leadingIcon: Icons.person,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => context.router.push(PersonalDetailsRoute()),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.orders,
                leadingIcon: FontAwesomeIcons.boxOpen,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => context.router.push(OrdersRoute()),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.language,
                leadingIcon: Icons.language,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageWidget();
                  },
                ),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.theme,
                leadingIcon: Icons.wb_sunny,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return ThemeWidget();
                  },
                ),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.paymentmethods,
                leadingIcon: Icons.payment,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => context.router.push(PaymentMethodRoute()),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.notifications,
                leadingIcon: Icons.notifications_none,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => context.router.push(NotifiactionRoute()),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.about,
                leadingIcon: Icons.info_outline,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                iconColor: context.kChangeTheme.hintColor,
                titleColor: context.kChangeTheme.hintColor,
                onTap: () => ErrorMessage(
                  context,
                  message: context.kAppLocalizations.comingsoon,
                ),
              ),
              ListTileItems(
                backgroungColor: context.kChangeTheme.primaryColor,
                title: context.kAppLocalizations.deleteanaccount,
                leadingIcon: Icons.delete,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                titleColor: AppColors.kRed,
                iconColor: AppColors.kRed,
                onTap: () => ErrorMessage(
                  context,
                  message: context.kAppLocalizations.comingsoon,
                ),
              ),
            ],
          ),
          Positioned(
            left: 20,
            right: 20,
            bottom: 0,
            child: ListTileItems(
              title: context.kAppLocalizations.logout,
              backgroungColor: context.kChangeTheme.primaryColorLight,
              textAlign: TextAlign.center,
              leadingIcon: Icons.logout,
              titleColor: AppColors.kSecondColor,
              iconColor: AppColors.kSecondColor,
              onTap: () => ErrorMessage(
                context,
                message: context.kAppLocalizations.comingsoon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
