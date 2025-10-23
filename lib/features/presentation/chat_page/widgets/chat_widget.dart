import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';

class ChatWidget extends StatelessWidget {
  final Color textColor;
  final Color containerColor;
  final String titel;
  const ChatWidget(
      {super.key,
      required this.textColor,
      required this.containerColor,
      required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 29, bottom: 15, top: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: containerColor,
      ),
      child: Text(
        titel,
        style: context.kTextTheme.titleSmall!.copyWith(color: textColor),
      ),
    );
  }
}
