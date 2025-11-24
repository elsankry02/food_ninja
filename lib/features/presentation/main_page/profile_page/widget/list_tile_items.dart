import 'package:flutter/material.dart';

import '../../../../../core/extension/extension.dart';

class ListTileItems extends StatelessWidget {
  final IconData? leadingIcon, trailingIcon;
  final TextAlign? textAlign;
  final String title;
  final Color? iconColor, titleColor, backgroungColor;
  final void Function()? onTap;
  const ListTileItems({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    required this.title,
    this.iconColor,
    this.titleColor,
    this.onTap,
    this.textAlign,
    this.backgroungColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: context.height * 0.010,
      ),
      margin: EdgeInsetsDirectional.only(bottom: context.height * 0.008),
      decoration: BoxDecoration(
        color: backgroungColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: context.kChangeTheme.primaryColorLight),
      ),
      child: ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.zero,
        leading: Icon(leadingIcon, color: iconColor),
        title: Text(
          title,
          textAlign: textAlign,
          style: context.kTextTheme.titleMedium!.copyWith(
            color: titleColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icon(trailingIcon, color: iconColor, size: 20),
      ),
    );
  }
}
