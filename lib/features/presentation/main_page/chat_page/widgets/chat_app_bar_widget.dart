import 'package:flutter/material.dart';
import '../../../../../core/components/custom_icon_button_pop.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../views/call_ranging_page.dart';

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
        trailing: CustomIconButton(
          icon: Image.asset(
            AppImages.kCallLogo,
            height: context.height * 0.045,
            width: context.height * 0.045,
            fit: BoxFit.scaleDown,
          ),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const CallRangingPage()),
          ),
        ),
      ),
    );
  }
}
