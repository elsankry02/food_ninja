import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../extension/extension.dart';

class MainAppBarWidget extends StatelessWidget {
  const MainAppBarWidget({super.key, required this.titelAppBarPage});
  final String titelAppBarPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 38,
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                titelAppBarPage,
                style: context.kTextTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: context.kChangeTheme.hintColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
