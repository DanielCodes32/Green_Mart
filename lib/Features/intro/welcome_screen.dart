import 'package:flutter/material.dart';
import 'package:green_mart/Features/explore/home_screen.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: [
            Image.asset(AppAssets.welcome,fit: BoxFit.cover,height: double.infinity,width: double.infinity,),
            Positioned(left: 0,right: 0,bottom: 92,
              child: Column( 
                children: [
                  SvgPic(assetName: AppAssets.carrotsveg,
                  width: 48,
                  height: 56,
                  color: AppColors.whiteColor,
                  ),
                  SizedBox(height: 40),
                  Text("Welcome\n to our store",textAlign: TextAlign.center,style: TextStyles.headline,),
                  SizedBox(height: 8),
                  Text("Get your groceries in as fast as one hour",textAlign: TextAlign.center,style: TextStyles.body,),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: MainButton(text: "Get Started",onPressed: (){
                      pushReplacement(context, HomeScreen());
                    },),
                  )
                ],
              ),
            )
          ],
        )
      );
  }
}
