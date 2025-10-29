import 'package:flutter/material.dart';
import '../../../../../core/extension/extension.dart';

class ListTileItems extends StatelessWidget {
  final IconData? leadingIcon, trailingIcon;
  final String title;
  final Color? iconColor, titleColor;
  final void Function()? onTap;
  const ListTileItems({
    super.key,
    this.leadingIcon,
    this.trailingIcon,
    required this.title,
    this.iconColor,
    this.titleColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: Icon(leadingIcon, color: iconColor),
      title: Text(
        title,
        style: context.kTextTheme.titleMedium!.copyWith(
          color: titleColor,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: Icon(trailingIcon, color: iconColor, size: 20),
    );
  }
}
