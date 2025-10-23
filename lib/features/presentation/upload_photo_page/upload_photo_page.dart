import 'package:flutter/material.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../set_location_page/set_location_page.dart';
import '../upload_preview_page/upload_preview_page.dart';
import 'widget/image_upload_widget.dart';

class UpLoadPhotoPage extends StatelessWidget {
  const UpLoadPhotoPage({super.key});

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
            height: context.height * 0.020,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UploadPreviewPage(),
              ),
            ),
            child: const ImageUploadWidget(
              upLoadPhoto: 'assets/svg/Gallery.svg',
              textStyelPhoto: 'From Gallery',
            ),
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const UploadPreviewPage(),
              ),
            ),
            child: const ImageUploadWidget(
              upLoadPhoto: 'assets/svg/camera.svg',
              textStyelPhoto: 'Take Photo',
            ),
          ),
          SizedBox(
            height: context.height * 0.0190,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SetLocationPage(),
              ),
            ),
            child: UnconstrainedBox(
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
          ),
        ],
      ),
    );
  }
}
