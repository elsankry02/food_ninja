import 'package:flutter/material.dart';

class CustomIconButtonPop extends StatelessWidget {
  final void Function()? onPressed;
  final Widget icon;

  const CustomIconButtonPop({super.key, this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}
