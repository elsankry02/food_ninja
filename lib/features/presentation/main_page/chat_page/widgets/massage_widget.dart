import 'package:flutter/material.dart';

import '../../../../../core/extension/extension.dart';

class MassageChatWidget extends StatefulWidget {
  final String image;
  final String titel;

  const MassageChatWidget({
    super.key,
    required this.image,
    required this.titel,
  });

  @override
  State<MassageChatWidget> createState() => _MassageChatWidgetState();
}

class _MassageChatWidgetState extends State<MassageChatWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      height: 81,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: theme.primaryColor,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(widget.image, width: 64, height: 64),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.titel,
                      style: context.kTextTheme.titleSmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: theme.hintColor,
                      ),
                    ),
                    const Text(
                      '20:00',
                      // style: AppText.textstyle14Regular,
                    ),
                  ],
                ),
                const Text(
                  'Your Order Just Arrived!',
                  // style: AppText.textstyle14Regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
