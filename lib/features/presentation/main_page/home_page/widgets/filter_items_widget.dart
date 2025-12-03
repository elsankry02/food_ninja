import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_colors.dart';
import 'package:food_ninja/core/extension/extension.dart';
import 'package:food_ninja/features/data/models/explore_model.dart';

class FilterItem extends StatelessWidget {
  final void Function()? onTap;
  const FilterItem({super.key, required this.data, this.onTap});
  final ExploreModel data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          top: 15,
          bottom: 15,
          start: 16,
          end: 85,
        ),
        margin: EdgeInsetsDirectional.only(end: context.height * 0.010),
        decoration: BoxDecoration(
          color: data.color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Image.asset(data.image),
            SizedBox(width: context.height * 0.020),
            Text(
              data.title,
              style: context.kTextTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w600,
                color: AppColors.kTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
