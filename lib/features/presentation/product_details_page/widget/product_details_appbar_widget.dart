import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/components/custom_icon_button_pop.dart';
import '../../../../core/components/custom_snakbar.dart';
import '../../../../core/constant/app_images.dart';
import '../../../../core/constant/app_svgs.dart';
import '../../../../core/extension/extension.dart';

class ProductDetailsAppbarWidget extends StatelessWidget {
  const ProductDetailsAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        CustomIconButton(
          icon: SvgPicture.asset(
            AppSvgs.kShare,
            fit: BoxFit.scaleDown,
            height: context.height * 0.045,
            width: context.height * 0.045,
          ),
          onPressed: () => ErrorMessage(
            context,
            message: context.kAppLocalizations.comingsoon,
          ),
        ),
      ],
    );
  }
}
