import 'package:flutter/material.dart';
import '../../../../core/components/custom_icon_button_pop.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/extension/extension.dart';

import '../widget/notification_card_widget.dart';

class Notifiactionpage extends StatelessWidget {
  const Notifiactionpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButtonPop(
                    icon: Image.asset(
                      AppImages.kIconBack,
                      fit: BoxFit.scaleDown,
                      height: context.height * 0.045,
                      width: context.height * 0.045,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
              SizedBox(height: context.height * 0.020),
              Text(
                "Notification",
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.020),
              NotifiactionCardWidget(
                image: AppImages.kTakenByTheDriver,
                titel: 'Your order has been taken by\n the driver',
                subTitel: 'Recently',
              ),
              SizedBox(height: context.height * 0.020),
              NotifiactionCardWidget(
                image: AppImages.kSuccessful,
                titel: r'Topup for $100 was successful',
                subTitel: '10.00 Am',
              ),
              SizedBox(height: context.height * 0.020),
              NotifiactionCardWidget(
                titel: 'Your order has been canceled',
                image: AppImages.kCanceled,
                subTitel: '22 Juny 2021',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
