import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';

class TopDetailsWidget extends StatefulWidget {
  const TopDetailsWidget({
    super.key,
  });

  @override
  State<TopDetailsWidget> createState() => _TopDetailsWidgetState();
}

class _TopDetailsWidgetState extends State<TopDetailsWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: context.height * 0.076,
          height: context.height * 0.034,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(context.height * 0.022),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              'Popular',
              style: context.kTextTheme.labelMedium!
                  .copyWith(color: AppColors.kPrimaryColor),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: context.height * 0.034,
              height: context.height * 0.034,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(context.height * 0.018),
              ),
              child: Center(
                child: SvgPicture.asset('assets/svg/Shape.svg'),
              ),
            ),
            SizedBox(width: context.height * 0.010),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                width: context.height * 0.034,
                height: context.height * 0.034,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(context.height * 0.018),
                ),
                child: Center(
                  child: Icon(
                    Icons.favorite,
                    color: isSelected ? AppColors.kGrey : Colors.red,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
