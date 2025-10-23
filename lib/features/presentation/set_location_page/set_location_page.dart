import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/components/custom_primary_button.dart';
import '../../../core/components/custom_top_appbar_widget.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/extension/extension.dart';
import '../navbar_page/navbar_page.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopAppBarBackNavigator(
            titel: 'Set Your Location',
            supTitel:
                'This data will be displayed in your account \nprofile for security',
          ),
          SizedBox(
            height: context.height * 0.020,
          ),
          Container(
            height: context.height * 0.147,
            width: context.height * 0.343,
            decoration: BoxDecoration(
              color: context.kChangeTheme.primaryColor,
              borderRadius: BorderRadius.circular(22),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: context.height * 0.020,
                      left: context.height * 0.010),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/svg/Pin_Logo.svg'),
                      SizedBox(
                        width: context.height * 0.014,
                      ),
                      Text(
                        'Your Location',
                        style: context.kTextTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: context.height * 0.027,
                ),
                Container(
                  height: context.height * 0.057,
                  width: context.height * 0.322,
                  decoration: BoxDecoration(
                    color: context.kChangeTheme.cardColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Set Location',
                      style: context.kTextTheme.titleSmall!
                          .copyWith(color: context.kChangeTheme.hintColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: context.height * 0.340,
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NavBarPage(),
              ),
            ),
            child: UnconstrainedBox(
              child: CustomPrimaryButton(
                title: 'Try Order',
                style: context.kTextTheme.titleSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.w700),
                padding: EdgeInsets.symmetric(
                    horizontal: context.height * 0.060,
                    vertical: context.height * 0.018),
                backGroundColor: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(context.height * 0.015),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
