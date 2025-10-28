import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/constant/app_images.dart';

import '../../../../../core/extension/extension.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int count = 1;
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
              Text(
                'chat',
                style: context.kTextTheme.headlineLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
            ],
          ),
        ],
      ),
    );
  }
}
