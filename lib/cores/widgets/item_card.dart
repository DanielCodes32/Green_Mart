import 'package:flutter/material.dart';

import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/Features/details/product_details_screen.dart';
import 'package:green_mart/Features/details/data/products.dart';
class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.product,
   
  });
 final Products product;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, ProductDetail(model: product));
      },
      child: Container(
        width: 225,
        height: 160,
        decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.accentColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: Hero(
                    tag:product.tag??'',
                    child: Image.asset(
                      product.image??"",
                      width: 90,
                      height: 72,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                product.title??"",
                style: TextStyles.title.copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(product.quatityperprice??"", style: TextStyles.body),
              SizedBox(height: 16),
              Row(
                children: [
                  Text(
                    product.price??"",
                    style: TextStyles.button.copyWith(
                      color: AppColors.blackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 38,
                    width: 38,
                    child: FloatingActionButton.small(
                      heroTag: UniqueKey(),
                      onPressed: () {},
                      elevation: 0,
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.add,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}