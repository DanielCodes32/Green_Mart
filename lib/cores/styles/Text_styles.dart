import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
class TextStyles {
  static TextStyle headline= TextStyle(
fontSize: 48,fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: AppColors.whiteColor
  );
   static TextStyle title= TextStyle(
fontSize: 22,fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: AppColors.whiteColor
  );
   static TextStyle body= TextStyle(
fontSize: 14,fontFamily: 'Poppins',fontWeight: FontWeight.normal,color: AppColors.greyColor
  );
   static TextStyle button= TextStyle(
fontSize: 16,fontFamily: 'Poppins',fontWeight: FontWeight.w600,color: AppColors.whiteColor
  );
   static TextStyle small= TextStyle(
fontSize: 12,fontFamily: 'Poppins',fontWeight: FontWeight.normal,color: AppColors.greyColor
  );
}