import 'package:flutter/material.dart';
import 'package:green_mart/Features/auth/verfication_screen.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/widgets/custom_form_field.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class MobileNumber extends StatelessWidget {
  const MobileNumber({super.key});

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
                  'Enter your mobile number',
                  style: TextStyles.title.copyWith(color: AppColors.blackColor),
                ),
                SizedBox(height: 7),
                Text(
                  "We need to verify you. We will send you a one time verification code.",
                  style: TextStyles.body,
                ),
                SizedBox(height: 42),
                CustomFormField(
                  hintText: '01xxxxxxxxxx',
                  labelText: 'Mobile Number',
                  borderRadius: BorderRadius.circular(18),
                  keyType: true,
                ),
                SizedBox(height: 46),
                MainButton(text: 'Next', onPressed: () {
                  push(context, VerficationScreen());
                }),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Resend confirmation code (1:23)",
                      style: TextStyles.body.copyWith(
                        color: AppColors.semiblackColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
