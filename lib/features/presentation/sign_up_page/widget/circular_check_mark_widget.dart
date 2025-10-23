import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';

class CircularCheckMarkWidget extends StatefulWidget {
  const CircularCheckMarkWidget({super.key, required this.textCheck});
  final String textCheck;

  @override
  State<CircularCheckMarkWidget> createState() =>
      _CircularCheckMarkWidgetState();
}

class _CircularCheckMarkWidgetState extends State<CircularCheckMarkWidget> {
  bool isSleceted = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isSleceted = !isSleceted;
              });
            },
            child: Icon(Icons.check_circle_sharp,
                color: isSleceted ? AppColors.kPrimaryColor : AppColors.kGrey),
          ),
          SizedBox(
            width: context.height * 0.008,
          ),
          Text(
            widget.textCheck,
            style: context.kTextTheme.labelMedium!
                .copyWith(color: AppColors.kGrey),
          ),
        ],
      ),
    );
  }
}
