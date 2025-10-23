import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../extension/extension.dart';

class CustomTopAppBarBackNavigator extends StatelessWidget {
  const CustomTopAppBarBackNavigator(
      {super.key, required this.titel, required this.supTitel});

  final String titel;
  final String supTitel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  titel,
                  style: context.kTextTheme.headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 19,
                ),
                Text(supTitel, style: context.kTextTheme.labelMedium),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
