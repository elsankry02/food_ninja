import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant/app_images.dart';
import '../constant/app_svgs.dart';
import '../extension/extension.dart';
import '../router/router.dart';
import 'custom_snakbar.dart';
import 'custom_text_form_field.dart';

class CustomHomeAppbar extends StatelessWidget {
  final TextEditingController searchController;
  const CustomHomeAppbar({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            context.kAppLocalizations.findyourfavoritefood,
            style: context.kTextTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: context.kChangeTheme.hintColor,
            ),
          ),
          trailing: GestureDetector(
            onTap: () => context.router.push(NotifiactionRoute()),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.height * 0.014,
                vertical: context.height * 0.014,
              ),
              decoration: BoxDecoration(
                color: context.kChangeTheme.primaryColor,
                borderRadius: BorderRadius.circular(context.height * 0.015),
                border: Border.all(
                  color: context.kChangeTheme.primaryColorLight,
                ),
              ),
              child: Image.asset(
                AppImages.kIconNotification,
                fit: BoxFit.scaleDown,
                height: context.height * 0.023,
                width: context.height * 0.019,
              ),
            ),
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: CustomTextFormField(
            hintText: context.kAppLocalizations.whatdoyouwanttoorder,
            hintStyle: context.kTextTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: context.kChangeTheme.hintColor,
            ),
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: context.kChangeTheme.hintColor,
            ),
            enabledBorderColor: context.kChangeTheme.primaryColorLight,
            focusedBorderColor: context.kChangeTheme.primaryColorLight,
            filled: true,
            fillColor: context.kChangeTheme.primaryColor,
            controller: searchController,
          ),
          trailing: GestureDetector(
            onTap: () => ErrorMessage(
              context,
              message: context.kAppLocalizations.comingsoon,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.height * 0.016,
                vertical: context.height * 0.018,
              ),
              decoration: BoxDecoration(
                color: context.kChangeTheme.primaryColor,
                borderRadius: BorderRadius.circular(context.height * 0.015),
                border: Border.all(
                  color: context.kChangeTheme.primaryColorLight,
                ),
              ),
              child: SvgPicture.asset(AppSvgs.kFilter),
            ),
          ),
        ),
      ],
    );
  }
}
