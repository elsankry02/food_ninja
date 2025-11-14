import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../../core/components/custom_icon_button_pop.dart';
import '../../../../../core/components/custom_snakbar.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/constant/app_images.dart';
import '../../../../../core/extension/extension.dart';
import '../../../../data/models/order_model.dart';
import '../widget/order_status_card_widget.dart';

@RoutePage()
class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(AppImages.kPatternBackground),
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: context.height * 0.020,
              end: context.height * 0.020,
              top: context.height * 0.060,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomIconButton(
                  icon: Image.asset(
                    AppImages.kIconBack,
                    fit: BoxFit.scaleDown,
                    height: context.height * 0.045,
                    width: context.height * 0.045,
                  ),
                  onPressed: () => context.router.maybePop(),
                ),
                SizedBox(height: context.height * 0.010),
                Text(
                  "Orders",
                  style: context.kTextTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColors.kTitle,
                  ),
                ),
                SizedBox(height: context.height * 0.020),
                Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: orderItems.length,
                    itemBuilder: (context, index) {
                      final data = orderItems[index];
                      return OrderStatusCardWidget(
                        imageOne: data.imageOne,
                        imageTwo: data.imageTwo,
                        title: data.title,
                        price: data.price,
                        items: data.items,
                        code: data.code,
                        cancelOntap: () =>
                            ErrorMessage(context, message: "COMING SOON"),
                        trackOrderOnTap: () =>
                            ErrorMessage(context, message: "COMING SOON"),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
