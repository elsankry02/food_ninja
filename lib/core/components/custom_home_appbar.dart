import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../router/router.dart';

import '../constant/app_colors.dart';
import '../constant/app_images.dart';
import '../constant/app_svgs.dart';
import '../extension/extension.dart';
import 'custom_show_top_snakbar.dart';
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
            'Find Your \nFavorite Food',
            style: context.kTextTheme.headlineLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.kTitle,
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
                color: AppColors.kWhite,
                borderRadius: BorderRadius.circular(context.height * 0.015),
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
            hintText: "What do you want to order?",
            hintStyle: context.kTextTheme.labelMedium!.copyWith(
              fontWeight: FontWeight.w500,
              color: AppColors.kArowBackground,
            ),
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: AppColors.kArowBack,
            ),
            enabledBorderColor: AppColors.kTextFiledColor ?? Colors.transparent,
            focusedBorderColor: AppColors.kTextFiledColor ?? Colors.transparent,
            filled: true,
            fillColor: AppColors.kTextFiledColor,
            controller: searchController,
            autofocus: false,
          ),
          trailing: GestureDetector(
            onTap: () => ErrorMessage(context, message: "COMING SOON"),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: context.height * 0.016,
                vertical: context.height * 0.018,
              ),
              decoration: BoxDecoration(
                color: AppColors.kTextFiledColor,
                borderRadius: BorderRadius.circular(context.height * 0.015),
              ),
              child: SvgPicture.asset(AppSvgs.kFilter),
            ),
          ),
        ),
      ],
    );
  }
}
