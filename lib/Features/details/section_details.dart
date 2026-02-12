import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/data/Sections.dart';
import 'package:green_mart/Features/details/data/products.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/styles/text_styles.dart';
import 'package:green_mart/cores/widgets/item_card.dart';
class Section extends StatefulWidget {
  const Section({super.key ,required this.model});
final Sections model;

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(centerTitle: true,
        leading:  IconButton(onPressed: (){
          pop( context);
        }, icon: Icon(Icons.arrow_back_ios),),
        title: Text(
          widget.model.title??'',
          style: TextStyles.title.copyWith(color: AppColors.blackColor),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune, color: AppColors.blackColor),
          ),
        ],
      ),
      body:SingleChildScrollView(
        child: GridView.builder(
          
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 300,crossAxisSpacing: 10,mainAxisSpacing: 10),
          
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) => ItemCard(
                product: Products.getProductsbycategory(widget.model.categoryid??"")[index],
               
              ),
              
              itemCount:Products.getProductsbycategory(widget.model.categoryid??"").length,
            ),
      ), 
    );
  }
}
