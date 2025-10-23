import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuccessNotificationWidget extends StatelessWidget {
  const CustomSuccessNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "  AppImages.kPattern",
          fit: BoxFit.fill,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 125, top: 250),
          child: Column(
            children: [
              SvgPicture.asset('assets/svg/Illustration.svg'),
            ],
          ),
        ),
      ],
    );
  }
}
