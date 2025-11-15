import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/components/custom_icon_button_pop.dart';
import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_svgs.dart';
import '../../../../../core/extension/extension.dart';
import '../widget/profile_image_picker.dart';

@RoutePage()
class PersonalDetailsPage extends StatefulWidget {
  const PersonalDetailsPage({super.key});

  @override
  State<PersonalDetailsPage> createState() => _PersonalDetailsPageState();
}

class _PersonalDetailsPageState extends State<PersonalDetailsPage> {
  final usernameController = TextEditingController();
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  @override
  void dispose() {
    usernameController.dispose();
    fullNameController.dispose();
    emailController.dispose();
    super.dispose();
  }

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
              top: context.height * 0.060,
            ),
            children: [
              Align(
                alignment: AlignmentDirectional.bottomStart,
                child: CustomIconButton(
                  icon: Image.asset(
                    AppImages.kIconBack,
                    fit: BoxFit.scaleDown,
                    height: context.height * 0.045,
                    width: context.height * 0.045,
                  ),
                  onPressed: () => context.router.maybePop(),
                ),
              ),
              SizedBox(height: context.height * 0.010),
              Text(
                context.kAppLocalizations.personaldetails,
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              ProfileImagePickerWidget(
                image: AppImages.kMintDark,
                onPressed: () {},
              ),
              SizedBox(height: context.height * 0.040),
              CustomTextFormField(
                hintText: context.kAppLocalizations.username,
                prefixIcon: SvgPicture.asset(
                  AppSvgs.kProfile,
                  fit: BoxFit.scaleDown,
                ),
                cursorColor: AppColors.kGrey,
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                enabledBorderColor: AppColors.kBorder,
                focusedBorderColor: AppColors.kBorder,
                controller: usernameController,
              ),
              SizedBox(height: context.height * 0.020),
              CustomTextFormField(
                hintText: context.kAppLocalizations.fullname,
                prefixIcon: SvgPicture.asset(
                  AppSvgs.kProfile,
                  fit: BoxFit.scaleDown,
                ),
                cursorColor: AppColors.kGrey,
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                enabledBorderColor: AppColors.kBorder,
                focusedBorderColor: AppColors.kBorder,
                controller: fullNameController,
              ),
              SizedBox(height: context.height * 0.020),
              CustomTextFormField(
                hintText: context.kAppLocalizations.email,
                prefixIcon: SvgPicture.asset(
                  AppSvgs.kMessage,
                  fit: BoxFit.scaleDown,
                ),
                cursorColor: AppColors.kGrey,
                hintStyle: context.kTextTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
                enabledBorderColor: AppColors.kBorder,
                focusedBorderColor: AppColors.kBorder,
                controller: emailController,
              ),
              SizedBox(height: context.height * 0.060),
              CustomPrimaryButton(
                title: context.kAppLocalizations.save,
                style: context.kTextTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.kWhite,
                ),
                borderRadius: BorderRadius.circular(context.height * 0.020),
                gradient: LinearGradient(
                  colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
                ),
                padding: EdgeInsets.symmetric(vertical: context.height * 0.015),
              ),
              SizedBox(height: context.height * 0.060),
            ],
          ),
        ],
      ),
    );
  }
}
