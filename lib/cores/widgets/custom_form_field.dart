import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class CustomFormField extends StatelessWidget {
  final BorderRadius borderRadius ;
  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String labelText;
  final bool? keyType;
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    required this.borderRadius,
    this.keyType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyType == true ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: TextStyle(
      color: AppColors.greyColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    fillColor: AppColors.accentColor,
    filled: true,


        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
           borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
           borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
           borderSide: BorderSide.none,
        ),
      ),
    );
  }
}