import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/components/custom_main_appbar_widget.dart';
import '../../../../../core/constant/app_colors.dart';
import '../../../../../core/extension/extension.dart';
import 'edit_location_screen.dart';
import 'edit_payments_screen.dart';

class PaymentCartScreen extends StatelessWidget {
  const PaymentCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MainAppBarWidget(titelAppBarPage: 'Confirm Order'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 20,
                      top: 19,
                    ),
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Deliver To',
                              style: context.kTextTheme.labelLarge!.copyWith(
                                color: AppColors.kGrey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditLocationScreen(),
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: context.kTextTheme.labelLarge!.copyWith(
                                  color: AppColors.kPrimaryColor,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 3,
                                  decorationColor: AppColors.kPrimaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                'assets/svg/Icon_Location.svg',
                              ),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '4517 Washington Ave. Manchester,\n Kentucky 39495',
                              style: context.kTextTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.w500,
                                color: theme.hintColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 20,
                      top: 19,
                    ),
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment Method',
                              style: context.kTextTheme.labelLarge!.copyWith(
                                color: AppColors.kGrey,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const EditPaymentsScreen(),
                                ),
                              ),
                              child: Text(
                                'Edit',
                                style: context.kTextTheme.labelLarge!.copyWith(
                                  color: AppColors.kPrimaryColor,
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 3,
                                  decorationColor: AppColors.kPrimaryColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 14),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset('assets/svg/paypal.svg'),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '2121 6352 8465 ****',
                              style: context.kTextTheme.labelLarge!.copyWith(
                                color: AppColors.kGrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
