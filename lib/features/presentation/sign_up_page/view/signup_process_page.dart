import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/components/custom_icon_back.dart';
import '../../../../core/components/custom_text_form_field.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_svgs.dart';
import '../../navbar_page/navbar_page.dart';
import '../widget/upload_photo_widget.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';

class SignupProcessPage extends StatefulWidget {
  const SignupProcessPage({super.key});

  @override
  State<SignupProcessPage> createState() => _SignupProcessPageState();
}

class _SignupProcessPageState extends State<SignupProcessPage> {
  final nameController = TextEditingController();
  final usernameController = TextEditingController();
  File? file;
  @override
  void dispose() {
    nameController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  Future<void> fromGallery() async {
    final picker = ImagePicker();
    final gallery = await picker.pickImage(source: ImageSource.gallery);
    if (gallery == null) return;
    setState(() {
      file = File(gallery.path);
    });
  }

  Future<void> fromCamera() async {
    final picker = ImagePicker();
    final camera = await picker.pickImage(source: ImageSource.camera);
    if (camera == null) return;
    setState(() {
      file = File(camera.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground),
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
                  CustomIconBack(
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
                'Fill in your bio to get \nstarted',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.019),
              Text(
                'This data will be displayed in your account \nprofile for security',
                style: context.kTextTheme.labelMedium,
              ),
              SizedBox(height: context.height * 0.020),
              UnconstrainedBox(
                child: ClipOval(
                  child: file == null
                      ? Image.asset(
                          AppImages.kMintDark,
                          width: context.height * 0.140,
                          height: context.height * 0.140,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          file!,
                          width: context.height * 0.140,
                          height: context.height * 0.140,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              SizedBox(height: context.height * 0.020),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UploadPhotoWidget(
                    image: AppSvgs.kGallery,
                    onTap: () => fromGallery(),
                  ),
                  UploadPhotoWidget(
                    image: AppSvgs.kCamera,
                    onTap: () => fromCamera(),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              CustomTextFormField(
                hintText: 'Name',
                autofocus: true,
                prefixIcon: SvgPicture.asset(
                  AppSvgs.kProfile,
                  fit: BoxFit.scaleDown,
                ),
                cursorColor: AppColors.kGrey,
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  color: Colors.grey,
                ),
                controller: nameController,
              ),
              SizedBox(height: context.height * 0.020),
              CustomTextFormField(
                autofocus: true,
                hintText: 'User Name',
                prefixIcon: SvgPicture.asset(
                  AppSvgs.kProfile,
                  fit: BoxFit.scaleDown,
                ),
                cursorColor: AppColors.kGrey,
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  color: Colors.grey,
                ),
                controller: usernameController,
              ),

              SizedBox(height: context.height * 0.040),
              CustomPrimaryButton(
                title: 'Next',
                style: context.kTextTheme.titleSmall!.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                margin: EdgeInsets.symmetric(
                  horizontal: context.height * 0.109,
                ),
                padding: EdgeInsets.symmetric(vertical: context.height * 0.018),
                gradient: const LinearGradient(
                  begin: AlignmentGeometry.topLeft,
                  end: AlignmentGeometry.bottomRight,
                  colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
                ),
                borderRadius: BorderRadius.circular(context.height * 0.015),
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NavBarPage()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
