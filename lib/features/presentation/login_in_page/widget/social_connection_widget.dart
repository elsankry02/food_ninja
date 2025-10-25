import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_colors.dart';

import '../../../../core/extension/extension.dart';

class SocialConnectionWidget extends StatelessWidget {
  final String titleSocial;
  final String imageSocial;
  final Function()? onTap;
  const SocialConnectionWidget({
    super.key,
    required this.titleSocial,
    required this.imageSocial,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.height * 0.031,
          vertical: context.height * 0.016,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.kBorder),
          borderRadius: BorderRadius.circular(context.height * 0.022),
        ),
        child: Row(
          children: [
            SvgPicture.asset(imageSocial),
            SizedBox(width: context.height * 0.013),
            Text(
              titleSocial,
              style: context.kTextTheme.titleSmall!.copyWith(
                color: context.kChangeTheme.hintColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
