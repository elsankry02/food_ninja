import 'package:flutter/material.dart';

class CustomListTileWidget extends StatelessWidget {
  final Widget? leading, title, trailing, subtitle;
  const CustomListTileWidget({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: leading,
      title: title,
      subtitle: subtitle,
      trailing: trailing,
    );
  }
}
