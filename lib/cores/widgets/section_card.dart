import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/data/Sections.dart';
import 'package:green_mart/Features/details/section_details.dart';
import 'package:green_mart/cores/functions/navigation.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
class SectionCard extends StatelessWidget {
  const SectionCard({
    super.key,
    required this.section,
   
  });
 final Sections section;
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        push(context, Section(model: section));
      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: Color(int.parse(section.color??'')),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(int.parse(section.color??''))),
          boxShadow: [BoxShadow(
            blurRadius: 10,
            color: Color(0xFF000000).withValues(alpha: 0),
            offset: Offset(0, -5),
          )

          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    section.image??"",
                    width: 90,
                    height: 72,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Text(
                section.title??"",
                style: TextStyles.title.copyWith(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}