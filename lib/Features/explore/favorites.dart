import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/data/products.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/main_button.dart';
class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: TextStyles.title.copyWith(color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Products.offerproducts.length,
        itemBuilder: (context, index) {
          var item = Products.offerproducts[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              
              children: [
                
                Row(
                  children: [
                    Image.asset(item.image ?? "", height: 65, width: 65),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                item.title ?? "",
                                style: TextStyles.button.copyWith(
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Spacer(),
                              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
                            ],
                          ),
                          Text(item.quatityperprice ?? "", style: TextStyles.body),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(height: 35, width: 35,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: AppColors.accentColor),
                
                                ),
                                child: Icon(Icons.remove, color: AppColors.greyColor,),
                              ),
                              SizedBox(width: 10,),
                              Text('1',style: TextStyles.body,),
                              SizedBox(width: 10,),
                              Container(height: 35, width: 35,
                                decoration: BoxDecoration(
                                  color: AppColors.whiteColor,
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: AppColors.accentColor),
                
                                ),
                                child: Icon(Icons.add, color: AppColors.greyColor,),
                              ),
                              Spacer(),
                              Text(item.price ?? "", style: TextStyles.title.copyWith(color: AppColors.blackColor)),
                            ],
                          ),
                          
                        ],
                      ),
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Divider(),
              ],
              
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: MainButton(text: 'Add All To Cart', onPressed: () {
          
            
          })
        ),
      );
    
  }
}
