import 'package:flutter/material.dart';
import 'package:green_mart/Features/Search/search_screen.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/best_builder.dart';
import 'package:green_mart/cores/widgets/offer_builder.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';
import 'package:green_mart/cores/widgets/custom_form_field.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SvgPic(
          assetName: AppAssets.logosvg,
          width: 36,
          height: 42,
          color: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22),
              child: GestureDetector(
                onTap: (){
                  push(context, SearchScreen());
                },
                child: CustomFormField(
                  enabled: false,
                  hintText: 'Search Store',
                  borderRadius: BorderRadius.circular(13),
                  prefixIcon: Icon(Icons.search, color: AppColors.blackColor),
                ),
              ),
            ),
            OfferBuilder(),
            SizedBox(height: 20),
            BestBuilder(),
          ],
        ),
      ),
    );
  }
}
