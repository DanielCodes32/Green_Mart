import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class CustomFormField extends StatelessWidget {
  final BorderRadius borderRadius;
  final String hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final String? labelText; 
  final bool? keyType;
  final String? Function(String?)? validator;
  final bool? enabled;
  final VoidCallback? onTap;
  final FocusNode? focusnode;
final Function(String?)? onchange;
  const CustomFormField({
    super.key,
    required this.hintText,
    this.labelText, 
    this.prefixIcon,
    this.suffixIcon,
    required this.borderRadius,
      this.keyType,
      this.validator,
      this.onTap,
    this.enabled=true,
    this.onchange,
    this.focusnode
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      keyboardType: keyType == true ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: labelText != null
            ? TextStyle(
                color: AppColors.greyColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              )
            : null,
        floatingLabelBehavior: labelText != null
            ? FloatingLabelBehavior.auto
            : FloatingLabelBehavior.never,
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
        disabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
      onTap:onTap,
      onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: onchange,
      focusNode: focusnode,
    );
  }
}