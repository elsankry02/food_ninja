import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/components/custom_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_svgs.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../../core/router/router.dart';
import '../widgets/volume_toggle_button_widget.dart';

@RoutePage()
class CallRangingPage extends StatefulWidget {
  const CallRangingPage({super.key});

  @override
  State<CallRangingPage> createState() => _CallRangingPageState();
}

class _CallRangingPageState extends State<CallRangingPage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(fit: BoxFit.cover, AppImages.kOnboardingPattern),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.250,
            ),
            child: Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(context.height * 0.120),
                    child: Image.asset(
                      AppImages.kDefultPhoto,
                      height: context.height * 0.195,
                      width: context.height * 0.195,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: context.height * 0.020),
                  Text(
                    'Mohamed Ibrahim',
                    textAlign: TextAlign.center,
                    style: context.kTextTheme.headlineMedium!.copyWith(
                      color: AppColors.kTitle,
                    ),
                  ),
                  SizedBox(height: context.height * 0.020),
                  Text(
                    context.kAppLocalizations.ringing,
                    textAlign: TextAlign.center,
                    style: context.kTextTheme.titleMedium!.copyWith(
                      color: AppColors.kGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: context.height * 0.020,
            right: context.height * 0.020,
            bottom: context.height * 0.025,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                VolumeToggleButtonWidget(
                  icon: SvgPicture.asset(
                    isSelected ? AppSvgs.kVolumeOff : AppSvgs.kVolumeUp,
                  ),
                  color: AppColors.kIconColor,
                  onPressed: () {
                    if (isSelected == true) {
                      ErrorMessage(
                        context,
                        message: context.kAppLocalizations.volumeup,
                      );
                    } else {
                      ErrorMessage(
                        context,
                        message: context.kAppLocalizations.volumeoff,
                      );
                    }
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                ),
                SizedBox(width: context.height * 0.020),
                VolumeToggleButtonWidget(
                  icon: Icon(Icons.close, color: AppColors.kWhite),
                  color: AppColors.kRed,
                  onPressed: () => context.router.maybePop(ChatDetailsRoute()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
