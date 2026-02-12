import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/data/products.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetail extends StatefulWidget {
  final Products model;

  const ProductDetail({super.key, required this.model});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF2F3F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new),
                        ),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: widget.model.tag ?? '',
                      child: Image.asset(widget.model.image ?? ""),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        widget.model.title ?? "",
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border_rounded),
                      ),
                    ],
                  ),
                  Text(
                    widget.model.quatityperprice ?? "",
                    style: TextStyles.body,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (quantity > 1) {
                              quantity--;
                            }
                          });
                        },
        
                        icon: Icon(Icons.remove),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Color(0xFFE2E2E2)),
                        ),
                        child: Center(
                          child: Text(
                            quantity.toString(),
                            style: TextStyles.body.copyWith(
                              color: AppColors.blackColor,
                            ),
                          ),
                        ),
                      ),
        
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (quantity < 10) {
                              quantity++;
                            }
                          });
                        },
                        icon: Icon(Icons.add),
                      ),
                      Spacer(),
                      Text(
                        widget.model.price ?? "",
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Divider(),
                  SizedBox(height: 10),
        
                  Theme( data: ThemeData(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: EdgeInsets.zero,
                      title: Text(
                        "Product Details",
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      children: [
                        Text(
                          widget.model.description ?? "",
                          style: TextStyles.body,
                        ),
                      ],
                    ),
                  ),
        
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Nutritions",
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Divider(),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Review",
                        style: TextStyles.title.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                      Spacer(),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 24,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (rating) {},
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                  MainButton(text: "Add To Cart", onPressed: () {
                    
                  }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
