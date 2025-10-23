import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';

class VerificationCodeWidget extends StatelessWidget {
  const VerificationCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.103,
      width: context.height * 0.347,
      decoration: BoxDecoration(
        color: context.kChangeTheme.primaryColor,
        borderRadius: BorderRadius.circular(context.height * 0.022),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            style: context.kTextTheme.headlineLarge!
                .copyWith(color: context.kChangeTheme.hintColor),
            '1',
          ),
          Text(
            style: context.kTextTheme.headlineLarge!
                .copyWith(color: context.kChangeTheme.hintColor),
            '9',
          ),
          Text(
            style: context.kTextTheme.headlineLarge!
                .copyWith(color: context.kChangeTheme.hintColor),
            '2',
          ),
          Text(
            style: context.kTextTheme.headlineLarge!
                .copyWith(color: context.kChangeTheme.hintColor),
            '3',
          ),
        ],
      ),
    );
  }
}
