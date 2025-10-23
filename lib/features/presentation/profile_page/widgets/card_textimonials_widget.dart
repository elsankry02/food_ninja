import 'package:flutter/material.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';

class CardTextimonialsWidget extends StatefulWidget {
  const CardTextimonialsWidget({
    super.key,
    required this.imageAssets,
    required this.titel,
  });
  final String imageAssets;
  final String titel;

  @override
  State<CardTextimonialsWidget> createState() => _CardTextimonialsWidgetState();
}

class _CardTextimonialsWidgetState extends State<CardTextimonialsWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      height: 128,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            widget.imageAssets,
            width: 64,
            height: 64,
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.titel,
                          style: context.kTextTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: theme.hintColor,
                          )),
                      Text(
                        '12 April 2021',
                        style: context.kTextTheme.labelMedium!.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 80,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: Container(
                      width: 53,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: isSelected
                            ? AppColors.kWhite
                            : const Color(0xffe8f9f1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_rounded,
                            color: isSelected
                                ? const Color.fromARGB(255, 214, 214, 214)
                                : AppColors.kPrimaryColor,
                          ),
                          Text(
                            '5',
                            style: AppText.textstyle17Bold
                                .copyWith(color: AppColors.kPrimaryColor),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'This Is great, So delicious! You Must\n Here, With Your family . . ',
                style: context.kTextTheme.labelMedium!.copyWith(
                  color: theme.hintColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
