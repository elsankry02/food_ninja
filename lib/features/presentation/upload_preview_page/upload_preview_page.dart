import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../set_location_page/set_location_page.dart';

class UploadPreviewPage extends StatelessWidget {
  const UploadPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Upload Your Photo\nProfile',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          SizedBox(
            height: context.height * 0.060,
          ),
          Stack(
            children: [
              // Image.asset(AppImages.kPhotoProfile),
              Positioned(
                right: context.height * 0.015,
                top: context.height * 0.030,
                child: SvgPicture.asset('assets/svg/Close Icon.svg'),
              ),
            ],
          ),
          SizedBox(
            height: context.height * 0.0170,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const SetLocationPage(),
            )),
            child: CustomPrimaryButton(
              title: 'Next',
              style: context.kTextTheme.titleSmall!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
              padding: EdgeInsets.symmetric(
                  horizontal: context.height * 0.060,
                  vertical: context.height * 0.018),
              backGroundColor: AppColors.kPrimaryColor,
              borderRadius: BorderRadius.circular(context.height * 0.015),
            ),
          ),
        ],
      ),
    );
  }
}
