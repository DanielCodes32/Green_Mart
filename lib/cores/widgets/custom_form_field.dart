import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class CustomFormField extends StatelessWidget {
  final BorderRadius borderRadius ;
  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String labelText;
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    required this.borderRadius
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: AppColors.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}