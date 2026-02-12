import 'package:flutter/material.dart' hide Tab;
import 'package:green_mart/Features/intro/welcome_screen.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:green_mart/cores/widgets/tab.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/user.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Daniel Osama',
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('DanielOsama@gmail.com', style: TextStyles.body),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.edit, color: AppColors.primaryColor),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Tab(icon: Icon(Icons.shopping_cart_outlined), title: 'Orders'),
            Tab(title: "My Details", icon: Icon(Icons.person_outline)),
            Tab(
              title: "Delivery Address",
              icon: Icon(Icons.location_on_outlined),
            ),
            Tab(title: "Payment Methods", icon: Icon(Icons.credit_card)),
            Tab(title: "Promo Card", icon: Icon(Icons.card_giftcard)),
            Tab(title: "Notifications", icon: Icon(Icons.notifications)),
            Tab(title: "Help", icon: Icon(Icons.help_outline)),
            Tab(title: "About", icon: Icon(Icons.error_outline)),
            Padding(
              padding: const EdgeInsets.all(10),
              child: MainButton(
                text: 'Log Out',
                onPressed: () {
                  pushReplacement(context, WelcomeScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
