import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/extension/extension.dart';

class SocialConnectionWidget extends StatelessWidget {
  const SocialConnectionWidget({
    super.key,
    required this.textSocial,
    required this.imageSocial,
  });
  final String textSocial;
  final String imageSocial;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.057,
      width: context.height * 0.152,
      decoration: BoxDecoration(
        color: context.kChangeTheme.primaryColor,
        borderRadius: BorderRadius.circular(context.height * 0.015),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(imageSocial),
          SizedBox(
            width: context.height * 0.013,
          ),
          Text(
            textSocial,
            style: context.kTextTheme.titleSmall!
                .copyWith(color: context.kChangeTheme.hintColor),
          ),
        ],
      ),
    );
  }
}
