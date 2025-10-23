import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extension/extension.dart';

class ImageUploadWidget extends StatelessWidget {
  const ImageUploadWidget({
    super.key,
    required this.upLoadPhoto,
    required this.textStyelPhoto,
  });
  final String upLoadPhoto;
  final String textStyelPhoto;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.height * 0.130,
        width: context.height * 0.325,
        decoration: BoxDecoration(
          color: context.kChangeTheme.primaryColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(upLoadPhoto),
            SizedBox(
              height: context.height * 0.09,
            ),
            Text(
              textStyelPhoto,
              style: context.kTextTheme.titleSmall!.copyWith(
                  color: context.kChangeTheme.hintColor,
                  fontWeight: FontWeight.w700),
            ),
          ],
        )));
  }
}
