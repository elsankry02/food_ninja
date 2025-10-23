import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';
import '../../notifiaction_page/view/notifiaction_page.dart';

class TextFieldSearchScreenWidget extends StatelessWidget {
  const TextFieldSearchScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/PatternTopRight.png',
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: Padding(
                padding: EdgeInsets.only(left: context.height * 0.025),
                child: SvgPicture.asset('assets/svg/Icon_Back.svg'),
              ),
            ),
            SizedBox(
              height: context.height * 0.020,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: context.height * 0.031, right: context.height * 0.039),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your \nFavorite Food',
                    style: context.kTextTheme.headlineSmall!
                        .copyWith(color: context.kChangeTheme.hintColor),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Notifiactionpage(),
                      ),
                    ),
                    child: Container(
                      height: context.height * 0.045,
                      width: context.height * 0.045,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius:
                            BorderRadius.circular(context.height * 0.015),
                      ),
                      child: UnconstrainedBox(
                        child: SvgPicture.asset(
                            'assets/svg/Icon_Notifiaction.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.height * 0.025,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.height * 0.025),
              child: TextField(
                style: const TextStyle(color: AppColors.kArowBack),
                cursorColor: AppColors.kArowBack,
                decoration: InputDecoration(
                  hintText: 'What do you want to order?',
                  hintStyle: context.kTextTheme.labelMedium!
                      .copyWith(color: AppColors.kGrey),
                  prefixIcon: UnconstrainedBox(
                    child: SvgPicture.asset('assets/svg/Icon_Search.svg'),
                  ),
                  filled: true,
                  fillColor: context.kChangeTheme.focusColor,
                  focusedBorder: outLineInputBorder(context,
                      color: context.kChangeTheme.focusColor),
                  enabledBorder: outLineInputBorder(context,
                      color: context.kChangeTheme.focusColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  OutlineInputBorder outLineInputBorder(BuildContext context,
      {required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(context.height * 0.015),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
