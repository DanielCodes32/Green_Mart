import 'package:flutter/material.dart';
import 'package:green_mart/Features/Search/search_screen.dart';
import 'package:green_mart/Features/details/data/Sections.dart';
import 'package:green_mart/cores/functions/navigation.dart';

import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

import 'package:green_mart/cores/widgets/custom_form_field.dart';
import 'package:green_mart/cores/widgets/section_card.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.whiteColor,
      appBar: AppBar(backgroundColor: AppColors.whiteColor,
        centerTitle: true,
        title: Text('Find Products',style: TextStyles.title.copyWith(color: AppColors.blackColor),),
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
            GridView.builder(
          
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 300,crossAxisSpacing: 10,mainAxisSpacing: 10),
          
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemBuilder: (context, index) => SectionCard(
                section: Sections.section[index],
               
              ),
              
              itemCount:Sections.section.length,
            ),
          ],
        ),
      ),
    );
  }
}
