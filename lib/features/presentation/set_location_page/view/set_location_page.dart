import 'package:flutter/material.dart';

import '../../../../core/components/custom_icon_button_pop.dart';
import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';
import '../../main_page/main_page.dart';
import '../widget/set_location_widget.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.050,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButtonPop(
                    icon: Image.asset(
                      AppImages.kIconBack,
                      fit: BoxFit.scaleDown,
                      height: context.height * 0.045,
                      width: context.height * 0.045,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              Text(
                'Set Your Location',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              Text(
                'This data will be displayed in your account \nprofile for security',
                style: context.kTextTheme.labelMedium,
              ),
              SizedBox(height: context.height * 0.020),
              SetLocationWidget(),
              SizedBox(height: context.height * 0.040),
              CustomPrimaryButton(
                title: 'Next',
                style: context.kTextTheme.titleSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: context.height * 0.115,
                ),
                padding: EdgeInsets.symmetric(vertical: context.height * 0.018),
                gradient: const LinearGradient(
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                  colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
                ),
                borderRadius: BorderRadius.circular(context.height * 0.015),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const MainPage()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
