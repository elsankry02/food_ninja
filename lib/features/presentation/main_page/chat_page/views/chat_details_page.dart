import 'package:flutter/material.dart';
import '../../../../../core/components/custom_icon_button_pop.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/components/custom_text_form_field.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../widgets/chat_app_bar_widget.dart';

class ChatDetailsPage extends StatefulWidget {
  const ChatDetailsPage({super.key});

  @override
  State<ChatDetailsPage> createState() => _ChatDetailsPageState();
}

class _ChatDetailsPageState extends State<ChatDetailsPage> {
  final messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            fit: BoxFit.cover,
            AppImages.kOnboardingPattern,
            width: double.infinity,
          ),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            children: [
              Row(
                children: [
                  CustomIconButton(
                    icon: Image.asset(
                      AppImages.kIconBack,
                      height: context.height * 0.045,
                      width: context.height * 0.045,
                      fit: BoxFit.scaleDown,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: context.height * 0.015),
                  ChatAppBarWidget(),
                ],
              ),
            ],
          ),
          Positioned(
            left: context.height * 0.020,
            right: context.height * 0.020,
            bottom: context.height * 0.010,
            child: CustomTextFormField(
              hintText: "Message",
              hintStyle: context.kTextTheme.labelLarge!.copyWith(
                color: AppColors.kGrey,
              ),
              filled: true,
              fillColor: AppColors.kWhite,
              controller: messageController,
              suffixIcon: CustomIconButton(
                icon: Icon(Icons.send_rounded, color: AppColors.kSecondColor),
                onPressed: () => ErrorMessage(context, message: "COMING SOON"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
