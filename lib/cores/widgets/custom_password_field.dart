import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class CustomPassField extends StatefulWidget {
  final BorderRadius borderRadius ;
  final String hintText;
  final Icon? prefixIcon;
  final String labelText;
 final String? Function(String?)? validator;
  const CustomPassField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    required this.borderRadius,
    this.validator,
  });

  @override
  State<CustomPassField> createState() => _CustomPassFieldState();
}

class _CustomPassFieldState extends State<CustomPassField> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        labelStyle: TextStyle(
      color: AppColors.greyColor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    fillColor: AppColors.accentColor,
    filled: true,
        suffixIcon: IconButton(icon: Icon(Icons.remove_red_eye), onPressed: (){
          setState(() {
            obscureText = !obscureText;
          });
        }),
        labelText: widget.labelText,
        enabledBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
           borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
           borderSide: BorderSide.none,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: widget.borderRadius,
           borderSide: BorderSide.none,
        ),
      ),
     validator: widget.validator,
    );
  }
}