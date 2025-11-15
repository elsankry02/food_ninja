import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_ninja/features/presentation/main_page/profile_page/widget/language_widget.dart';

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
            ),
            children: [
              ProfileListTileWidget(),
              SizedBox(height: context.height * 0.033),
              ListTileItems(
                title: context.kAppLocalizations.personaldetails,
                leadingIcon: Icons.person,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(PersonalDetailsRoute()),
              ),
              ListTileItems(
                title: context.kAppLocalizations.orders,
                leadingIcon: FontAwesomeIcons.boxOpen,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(OrdersRoute()),
              ),
              ListTileItems(
                title: context.kAppLocalizations.language,
                leadingIcon: Icons.language,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return LanguageWidget();
                  },
                ),
              ),
              ListTileItems(
                title: context.kAppLocalizations.paymentmethods,
                leadingIcon: Icons.payment,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(PaymentMethodRoute()),
              ),
              ListTileItems(
                title: context.kAppLocalizations.notifications,
                leadingIcon: Icons.notifications_none,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => context.router.push(NotifiactionRoute()),
              ),
              ListTileItems(
                title: context.kAppLocalizations.help,
                leadingIcon: Icons.help_outline,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(
                  context,
                  message: context.kAppLocalizations.comingsoon,
                ),
              ),
              ListTileItems(
                title: context.kAppLocalizations.about,
                leadingIcon: Icons.info_outline,
                trailingIcon: Icons.arrow_forward_ios_rounded,
                onTap: () => ErrorMessage(
                  context,
                  message: context.kAppLocalizations.comingsoon,
                ),
              ),
              ListTileItems(
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
              backgroungColor: AppColors.kBorder,
              padding: EdgeInsets.only(left: context.height * 0.020),
              borderRadius: BorderRadius.circular(context.height * 0.019),
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
