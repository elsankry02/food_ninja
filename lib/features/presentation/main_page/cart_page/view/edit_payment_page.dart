import 'package:flutter/material.dart';

import '../../../../../core/components/custom_icon_button_pop.dart';
import '../../../../../core/components/custom_payment_widget.dart';
import '../../../../../core/components/custom_show_top_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/constant/app_svgs.dart';
import '../../../../../core/extension/extension.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({super.key});

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  final paypalController = TextEditingController();
  final visaController = TextEditingController();
  final payyoneerController = TextEditingController();
  @override
  void dispose() {
    paypalController.dispose();
    visaController.dispose();
    payyoneerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground, fit: BoxFit.cover),
          ListView(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            physics: const BouncingScrollPhysics(),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomIconButton(
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
                'Confirm Order',
                style: context.kTextTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.kTitle,
                ),
              ),
              SizedBox(height: context.height * 0.040),
              PaymentsContainer(
                payment: AppSvgs.kPaypal,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
                controller: paypalController,
              ),
              SizedBox(height: context.height * 0.020),
              PaymentsContainer(
                payment: AppSvgs.kVisa,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
                controller: visaController,
              ),
              SizedBox(height: context.height * 0.020),
              PaymentsContainer(
                payment: AppSvgs.kPayoneer,
                onTap: () => ErrorMessage(context, message: "COMING SOON"),
                controller: payyoneerController,
              ),
              SizedBox(height: context.height * 0.190),
            ],
          ),
        ],
      ),
    );
  }
}
