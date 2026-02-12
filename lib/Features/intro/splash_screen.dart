
import 'package:flutter/material.dart';
import 'package:green_mart/Features/intro/welcome_screen.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
  Future.delayed( Duration(seconds: 3), () {
   
   pushReplacement(context, WelcomeScreen());
     });
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Align(alignment: Alignment.center,
        child: 
            SvgPic(
              assetName: AppAssets.logosvg,
              width: 55,
              height: 64,
              color: AppColors.whiteColor,
            ),
            
         
      ),
    );
  }
}
