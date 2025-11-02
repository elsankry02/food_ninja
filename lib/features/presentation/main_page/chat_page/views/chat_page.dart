import 'package:flutter/material.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/views/chat_details_page.dart';
import 'package:food_ninja/features/presentation/main_page/chat_page/widgets/message_tile_widget.dart';

import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
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
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Chat Message',
                  style: context.kTextTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.w500,
                    color: AppColors.kSecondColor,
                  ),
                ),
                SizedBox(height: context.height * 0.020),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return MessageTileWidget(
                        title: "Mohamed Ibrahim",
                        subTitle: "Message yourself",
                        time: "9:01 AM",
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ChatDetailsPage(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
