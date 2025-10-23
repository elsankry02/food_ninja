import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/app_color.dart';
import '../../../../core/extension/extension.dart';

class ViaMassage extends StatelessWidget {
  final String imageVia;
  final String textVia;
  final String subVia;
  const ViaMassage(
      {super.key,
      required this.imageVia,
      required this.textVia,
      required this.subVia});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.105,
      width: context.height * 0.347,
      decoration: BoxDecoration(
        color: context.kChangeTheme.primaryColor,
        borderRadius: BorderRadius.circular(context.height * 0.022),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: context.height * 0.026),
            child: SvgPicture.asset(imageVia),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textVia,
                style: context.kTextTheme.titleMedium!.copyWith(
                  color: AppColors.kGrey,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/svg/Frame 2.svg'),
                  SizedBox(
                    width: context.height * 0.014,
                  ),
                  SvgPicture.asset('assets/svg/Frame 2.svg'),
                  SizedBox(
                    width: context.height * 0.014,
                  ),
                  Text(
                    subVia,
                    style: context.kTextTheme.titleMedium!.copyWith(
                      color: context.kChangeTheme.hintColor,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
