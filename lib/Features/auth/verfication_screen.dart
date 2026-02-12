import 'package:flutter/material.dart';
import 'package:green_mart/Features/auth/mobile-number.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:pinput/pinput.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class VerficationScreen extends StatelessWidget {
  const VerficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter verification code',
                  style: TextStyles.title.copyWith(color: AppColors.blackColor),
                ),
                SizedBox(height: 7),
                Text(
                  "We have sent SMS to: 01XXXXXXXXXX",
                  style: TextStyles.body,
                ),
                SizedBox(height: 42),
                Pinput(length: 5,showCursor: false,defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyles.title.copyWith(color: AppColors.blackColor),
                  decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(8),
                  )
                ),separatorBuilder: (index) => SizedBox(width: 20)
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    TextButton(onPressed: (){
                    
                    }, child: Text('Resend OTP', style: TextStyles.body.copyWith(color: Color(0xFFF37A20)))),
                    Spacer(),
                    TextButton(onPressed: (){
                    pushReplacement(context, MobileNumber());
                    }, child: Text('Change Phone Number', style: TextStyles.body.copyWith(color: AppColors.greyColor))),
                  ],
                ),
                
                SizedBox(height: 27),
                MainButton(text: 'Confirm', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
