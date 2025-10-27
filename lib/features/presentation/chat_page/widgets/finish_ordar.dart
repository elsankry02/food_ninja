import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_chat_call_widget.dart';
import '../../../../core/components/custom_primary_button.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../views/chat_page.dart';
import 'rate_food.dart';

class FinishOrdar extends StatelessWidget {
  const FinishOrdar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset(
                "AppImages.kPattern",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 250)),
                  //! Custom ChatCall Widget
                  const CustomChatCallWidget(
                    image: "AppImages.kOrderFinishedImage",
                    titel: 'Thank You!\nOrder Completed',
                    subtitel: 'Please rate your last Driver',
                    // style: AppText.textstyle14Regular,
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UnconstrainedBox(
                        child: SvgPicture.asset('assets/svg/Star.svg'),
                      ),
                      const SizedBox(width: 23),
                      UnconstrainedBox(
                        child: SvgPicture.asset('assets/svg/Star.svg'),
                      ),
                      const SizedBox(width: 23),
                      UnconstrainedBox(
                        child: SvgPicture.asset('assets/svg/Group_774.svg'),
                      ),
                      const SizedBox(width: 23),
                      UnconstrainedBox(
                        child: SvgPicture.asset('assets/svg/Star_oppacty.svg'),
                      ),
                      const SizedBox(width: 23),
                      UnconstrainedBox(
                        child: SvgPicture.asset('assets/svg/Star_oppacty.svg'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 77),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Leave feedback',
                        // hintStyle: AppText.textstyle14Regular,
                        prefixIcon: UnconstrainedBox(
                          child: SvgPicture.asset('assets/svg/edit_Icon.svg'),
                        ),
                        filled: true,
                        fillColor: theme.primaryColor,
                        enabledBorder: outlineBorder(theme.primaryColor),
                        focusedBorder: outlineBorder(theme.primaryColor),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RateFood(),
                            ),
                          ),
                          child: CustomPrimaryButton(
                            title: 'Submit',
                            style: context.kTextTheme.titleSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: context.height * 0.020,
                              vertical: context.height * 0.018,
                            ),
                            backGroundColor: AppColors.kPrimaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const Chat(),
                            ),
                          ),
                          child: Container(
                            width: 82,
                            height: 57,
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                'Skip',
                                style: context.kTextTheme.titleSmall!.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.kPrimaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  OutlineInputBorder outlineBorder(Color theme) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: theme),
    );
  }
}
