import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/core/constant/app_color.dart';
import 'package:food_ninja/core/extension/extension.dart';

class UploadPhotoWidget extends StatelessWidget {
  final String image;
  final void Function()? onTap;
  const UploadPhotoWidget({super.key, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: context.height * 0.050,
          vertical: context.height * 0.016,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(context.height * 0.022),
          border: Border.all(color: AppColors.kBorder),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
