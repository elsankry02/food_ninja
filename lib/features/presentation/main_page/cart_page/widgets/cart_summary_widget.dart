import 'package:flutter/material.dart';
import '../../../../../core/components/custom_primary_button.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../view/confirm_order_page.dart';

class CartSummaryWidget extends StatelessWidget {
  const CartSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.height * 0.015),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AppImages.kPatternButtonSheet),
        ),
        gradient: LinearGradient(
          colors: [AppColors.kPrimaryColor, AppColors.kSecondColor],
        ),
        borderRadius: BorderRadius.circular(context.height * 0.016),
      ),
      child: Column(
        children: [
          BuildRowWidget(
            title: 'Sub-Total',
            subTitle: '120',
            titleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
            subTitleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
          ),
          BuildRowWidget(
            title: 'Delivery Charge',
            subTitle: '10',
            titleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
            subTitleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
          ),
          BuildRowWidget(
            title: 'Discount',
            subTitle: '20',
            titleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
            subTitleStyle: context.kTextTheme.bodyMedium!.copyWith(
              color: AppColors.kWhite,
            ),
          ),
          SizedBox(height: context.height * 0.020),
          BuildRowWidget(
            title: 'Total',
            subTitle: '150',
            titleStyle: context.kTextTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.kWhite,
            ),
            subTitleStyle: context.kTextTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.w700,
              color: AppColors.kWhite,
            ),
          ),
          SizedBox(height: context.height * 0.020),
          CustomPrimaryButton(
            title: "Confirm Order",
            style: context.kTextTheme.titleSmall!.copyWith(
              color: AppColors.kSecondColor,
            ),
            padding: EdgeInsets.symmetric(vertical: context.height * 0.022),
            backGroundColor: AppColors.kWhite,
            borderRadius: BorderRadius.circular(context.height * 0.015),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const ConfirmOrderPage()),
            ),
          ),
        ],
      ),
    );
  }
}

class BuildRowWidget extends StatelessWidget {
  final String title, subTitle;
  final TextStyle? titleStyle, subTitleStyle;
  const BuildRowWidget({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleStyle,
    this.subTitleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: titleStyle),
        Text("\$ $subTitle", style: subTitleStyle),
      ],
    );
  }
}
