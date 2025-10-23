import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_chat_call_widget.dart';
import '../../../../core/constant/app_text.dart';
import 'finish_ordar.dart';

class Call extends StatefulWidget {
  const Call({super.key});

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "AppImages.kPattern",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 250),
                //! Custom ChatCall Widget
                child: CustomChatCallWidget(
                  image: "AppImages.kDeliveryMan",
                  titel: 'Delivery Man',
                  subtitel: '15.23 Min',
                  style: AppText.textstyle19Regular,
                  height: 177,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: SvgPicture.asset(isSelected
                    ? 'assets/svg/Speaker_Icon.svg'
                    : 'assets/svg/Mute_Icon.svg'),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const FinishOrdar(),
                  ),
                ),
                child: SvgPicture.asset('assets/svg/Close_Icon2.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
