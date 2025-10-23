import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key, required this.title});
  final String title;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool isSleceted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          side: BorderSide(color: AppColors.kGrey),
          activeColor: AppColors.kSecondColor,
          value: isSleceted,
          onChanged: (value) {
            setState(() {
              isSleceted = value!;
            });
          },
        ),
        Text(
          widget.title,
          style: context.kTextTheme.labelMedium!.copyWith(
            color: AppColors.kGrey,
          ),
        ),
      ],
    );
  }
}
