import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainerPopupWidget extends StatelessWidget {
  const CustomContainerPopupWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Center(
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: SvgPicture.asset('assets/svg/Path.svg'),
          ),
        ),
      ),
    );
  }
}
