import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/views/call_ranging_page.dart';

class ChatAppBarWidget extends StatelessWidget {
  const ChatAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(context.height * 0.090),
          child: Image.asset(
            AppImages.kDefultPhoto,
            height: context.height * 0.045,
            width: context.height * 0.045,
          ),
        ),
        title: Text(
          "Mohamed Ibrahim",
          style: context.kTextTheme.titleSmall!.copyWith(
            color: AppColors.kTitle,
            fontWeight: FontWeight.w700,
          ),
        ),
        subtitle: Text(
          "Online",
          style: context.kTextTheme.labelMedium!.copyWith(
            color: AppColors.kGrey,
          ),
        ),
        trailing: GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CallRangingPage()),
          ),
          child: Image.asset(
            AppImages.kCallLogo,
            height: context.height * 0.045,
            width: context.height * 0.045,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
