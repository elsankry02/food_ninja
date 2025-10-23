import 'package:flutter/material.dart';
import 'package:food_ninja/core/constant/app_color.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final int? maxLength;
  final Widget? prefixIcon, suffixIcon;
  final TextEditingController controller;
  final Function(String value)? onChanged, onFieldSubmitted;
  final String? Function(String? value)? validator;
  final Color? cursorColor, suffixIconColor, prefixIconColor;
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
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      autofocus: true,
      validator: validator,
      controller: controller,
      onChanged: onChanged,
      maxLength: maxLength,
      onFieldSubmitted: onFieldSubmitted,
      cursorColor: cursorColor,
      keyboardType: keyboardType,
      decoration: InputDecoration(
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
