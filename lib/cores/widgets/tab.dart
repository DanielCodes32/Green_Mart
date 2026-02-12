import 'package:flutter/material.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class Tab extends StatelessWidget {
 final String? title;
  final Icon ? icon;
  
   const Tab({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(height: 15),
        ListTile(leading: icon,
        title: Text(title??'', style: TextStyles.title.copyWith(fontSize:20,color: AppColors.blackColor),),
        trailing: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios),
        )
        )
      ]
    );
  }
}