import 'package:flutter/material.dart';

import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';

class CardProfile extends StatelessWidget {
  final String image;
  const CardProfile({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11),
      width: double.infinity,
      height: 103,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(image),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Spacy fresh crab',
                  style: context.kTextTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600, color: theme.hintColor),
                ),
                const Text(
                  'Waroenk kita',
                  style: AppText.textstyle14Regular,
                ),
                const Text(
                  r'$ 35',
                  style: AppText.textstyle19Bold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
