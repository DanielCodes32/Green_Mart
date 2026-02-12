import 'package:flutter/material.dart';
import 'package:green_mart/Features/cart/accepted_screen.dart';
import 'package:green_mart/Features/details/data/products.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/main_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyles.title.copyWith(color: AppColors.blackColor),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Products.bestproducts.length,
        itemBuilder: (context, index) {
          var item = Products.bestproducts[index];
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              
              children: [
                Divider(),
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
                              IconButton(onPressed: () {}, icon: Icon(Icons.close)),
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
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        child: MainButton(text: 'Checkout', onPressed: () {
          showModalBottomSheet(context: context, isScrollControlled: true,useSafeArea: true,shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))), builder: (context) {
            return Column(
              children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text("Checkout",style: TextStyles.title.copyWith(color: AppColors.blackColor),),
                  ),
                  Spacer(),
                  CloseButton()
                 
                ],
              ), Divider(),
                  ListTile(
                  title: Text("Payment Method",style: TextStyles.button.copyWith(color: AppColors.blackColor),),
                  trailing: Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,),
                  
                ),
                Divider(),
                SizedBox(height: 20,),
                ListTile(
                  title: Text("Delivery address",style: TextStyles.button.copyWith(color: AppColors.blackColor),),
                  trailing: Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,),
                  
                ),
               Divider(),
                SizedBox(height: 20,),
                ListTile(
                  title: Text("Promo code",style: TextStyles.button.copyWith(color: AppColors.blackColor),),
                  trailing: Icon(Icons.arrow_forward_ios,color: AppColors.blackColor,),
                  
                ),
                SizedBox(height: 20,),
                MainButton(text: 'Checkout', onPressed: (){
                  pushReplacement(context, AcceptedScreen());
                }),
                
                SizedBox(height: 10,),
                Text('Total Price:  \$20.96',style: TextStyles.title.copyWith(color: AppColors.blackColor),),
                
                
            ]);
            
          });
        }),
      ),
    );
  }
}
