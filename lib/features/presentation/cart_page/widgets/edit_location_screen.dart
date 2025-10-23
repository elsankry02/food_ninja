import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_main_appbar_widget.dart';
import '../../../../core/constant/app_color.dart';
import '../../../../core/constant/app_text.dart';
import '../../../../core/extension/extension.dart';
import 'set_location_screen.dart';

class EditLocationScreen extends StatelessWidget {
  const EditLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const MainAppBarWidget(titelAppBarPage: 'Shipping'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 12, right: 20, top: 19),
                    width: double.infinity,
                    height: 108,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: theme.primaryColor),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Order Location',
                          style: AppText.textstyle14Regular,
                        ),
                        const SizedBox(height: 14),
                        Row(
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                  'assets/svg/Icon_Location.svg'),
                            ),
                            const SizedBox(width: 14),
                            Text(
                              '8502 Preston Rd. Inglewood,\n Maine 98380',
                              style: context.kTextTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: theme.hintColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 12, top: 17),
                    width: double.infinity,
                    height: 141,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: theme.primaryColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Deliver To',
                          style: AppText.textstyle14Regular,
                        ),
                        const SizedBox(height: 14),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UnconstrainedBox(
                              child: SvgPicture.asset(
                                  'assets/svg/Icon_Location.svg'),
                            ),
                            const SizedBox(width: 14),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '8502 Preston Rd. Inglewood,\n Maine 98380',
                                  style: context.kTextTheme.titleSmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w500,
                                          color: theme.hintColor),
                                ),
                                const SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const SetLocationScreen(),
                                    ),
                                  ),
                                  child: Text(
                                    'set location',
                                    style: AppText.textstyle14Regular.copyWith(
                                      color: AppColors.kPrimaryColor,
                                      decoration: TextDecoration.underline,
                                      decorationColor: AppColors.kPrimaryColor,
                                      decorationThickness: 3,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
