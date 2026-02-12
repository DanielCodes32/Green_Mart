import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/item_card.dart';
import 'package:green_mart/Features/details/data/products.dart';
class OfferBuilder extends StatelessWidget {
  const OfferBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(22),
          child: Row(
            children: [
              Text(
                'Exclusive Offer',
                style: TextStyles.title.copyWith(
                  color: AppColors.blackColor,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {
                
                },
                child: Text(
                  'See All',
                  style: TextStyles.body.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 225,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => ItemCard(product: Products.offerproducts[index]),
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount:Products.offerproducts.length,
          ),
        ),
      ],
    );
  }
}
