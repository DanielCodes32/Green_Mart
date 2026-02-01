import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final double width;
  final double height;
  final double radius;
  final VoidCallback onPressed;
  final TextStyle? textStyle;
  
  const MainButton({
    super.key,
    required this.text,
    this.bgcolor=AppColors.primaryColor,
     this.width=double.infinity,
    this.height=67,
    this.radius=20,
    required this.onPressed,
   this.textStyle
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed,style: ElevatedButton.styleFrom(backgroundColor: bgcolor,
    minimumSize:Size(width,height),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius))), child: Text(text,style: textStyle??TextStyles.button,));
  }
}
