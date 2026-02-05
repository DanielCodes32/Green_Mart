import 'package:flutter/material.dart';
import 'package:green_mart/Features/auth/mobile-number.dart';
import 'package:green_mart/Features/auth/login_screen.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/widgets/custom_form_field.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/custom_password_field.dart';
class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column( mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Center(
                child: SvgPic(assetName: AppAssets.carrotsveg, width: 44, height: 50)
              ),
                  SizedBox(height: 75,),
               Text('Sign Up',style: TextStyles.title.copyWith(color: AppColors.blackColor),),
                SizedBox(height: 7),
              Text(  "Enter your credentials to continue",style: TextStyles.body,),
              SizedBox(height: 30,),
               CustomFormField(hintText: 'Ahmed123', labelText: 'Username', prefixIcon: Icon(Icons.person_outlined,color: AppColors.greyColor,), borderRadius: BorderRadius.circular(18)),
              SizedBox(height: 20,),
              CustomFormField(hintText: 'example@gmail.com', labelText: 'Email', prefixIcon: Icon(Icons.email_outlined,color: AppColors.greyColor,), borderRadius: BorderRadius.circular(18)),
              SizedBox(height: 20,),
              CustomPassField(hintText: '********', labelText: 'Password', borderRadius: BorderRadius.circular(18),),
              SizedBox(height: 20,),
              MainButton(text: 'Sign Up', onPressed: (){
                push(context, MobileNumber());
              },),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?",style: TextStyles.body.copyWith(color:AppColors.blackColor, fontWeight: FontWeight.w600),),
                  SizedBox(width: 5,),
                  TextButton(onPressed: (){
                    pushReplacement(context, LoginScreen());
                  },style: TextButton.styleFrom(padding: EdgeInsets.zero), child: Text('Login',style: TextStyles.body.copyWith(color: AppColors.primaryColor, fontWeight: FontWeight.w600),))
                ],
              )
              ],
            ),
          ),
        ),
      ),
    );
    
  }
}
