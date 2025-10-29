import 'package:flutter/material.dart';

import '../constant/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText, autofocus;
  final bool? filled;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final int? maxLength;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController controller;
  final Function(String value)? onChanged, onFieldSubmitted;
  final String? Function(String? value)? validator;
  final Color? cursorColor, suffixIconColor, prefixIconColor, fillColor;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.validator,
    this.onChanged,
    this.autovalidateMode,
    this.hintStyle,
    this.onFieldSubmitted,
    this.maxLength,
    this.cursorColor,
    this.prefixIcon,
    this.suffixIcon,
    this.suffixIconColor,
    this.prefixIconColor,
    this.obscureText = false,
    this.filled,
    this.fillColor,
    this.autofocus = false,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      autofocus: autofocus,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: prefixIconColor,
        suffixIconColor: suffixIconColor,
        hintText: hintText,
        hintStyle: hintStyle,
        enabledBorder: outlineInputBorder(borderColor: AppColors.kBorder),
        focusedBorder: outlineInputBorder(borderColor: AppColors.kBorder),
        focusedErrorBorder: outlineInputBorder(borderColor: AppColors.kRed),
        errorBorder: outlineInputBorder(borderColor: AppColors.kRed),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      // borderColor
      borderSide: BorderSide(color: borderColor),
    );
  }
}
