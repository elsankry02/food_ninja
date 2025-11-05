import 'package:flutter/material.dart';
import 'package:food_ninja/core/components/custom_icon_button_pop.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/extension/extension.dart';

class ProfileImagePickerWidget extends StatelessWidget {
  final String image;
  final void Function()? onPressed;
  const ProfileImagePickerWidget({
    super.key,
    required this.image,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          ClipOval(
            child: Image.asset(
              image,
              width: context.height * 0.180,
              height: context.height * 0.180,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
              ),
              borderRadius: BorderRadius.circular(context.height * 0.030),
            ),
            child: CustomIconButton(
              icon: Icon(
                Icons.camera_alt,
                color: AppColors.kWhite,
                size: context.height * 0.035,
              ),
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
