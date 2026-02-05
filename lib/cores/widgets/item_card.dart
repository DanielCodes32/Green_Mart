import 'package:flutter/material.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
import 'package:green_mart/cores/styles/app_colors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                child: Image.asset(
                  AppAssets.apple,
                  width: 90,
                  height: 72,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              'Apples',
              style: TextStyles.title.copyWith(
                color: AppColors.blackColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5),
            Text('1kg', style: TextStyles.body),
            SizedBox(height: 16),
            Row(
              children: [
                Text(
                  '4.99\$',
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
    );
  }
}