import 'package:flutter/material.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/styles/text_styles.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';
import 'package:green_mart/features/explore/shop_screen.dart';
class AcceptedScreen extends StatelessWidget{
  const AcceptedScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPic(assetName: AppAssets.acceptedsvg, width: 220, height: 210),
          SizedBox(height: 30),
          Text('Your Order has been accepted',textAlign: TextAlign.center, style: TextStyles.title.copyWith(color:AppColors.blackColor,fontSize: 25  ),),
          SizedBox(height: 5,),
           Text('Your items has been placcd and is on it’s way to being processed' ,textAlign: TextAlign.center, style: TextStyles.body,),
           SizedBox(height: 40,),
           MainButton(text: "Go To Home", onPressed: (){
            pushReplacement(context, ShopScreen());
           })
        ],
      ),
    ),
  );
  }

}