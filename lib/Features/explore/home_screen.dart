import 'package:flutter/material.dart';
import 'package:green_mart/Features/cart/cart_screen.dart';
import 'package:green_mart/Features/explore/explore.dart';
import 'package:green_mart/Features/explore/favorites.dart';
import 'package:green_mart/Features/profile/profile_screen.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/svg_pic.dart';
import 'package:green_mart/features/explore/shop_screen.dart';
import 'package:green_mart/cores/styles/Text_styles.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavoriteScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
       
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0XFFE6EBF3).withValues( alpha: 0.1),
              blurRadius: 10,
              offset: Offset(0, -5),
            ),
          ],
           color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: AppColors.blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyles.body.copyWith(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPic(assetName: AppAssets.storesvg, width: 21, height: 21,color: AppColors.blackColor,),
              activeIcon: SvgPic(
                assetName: AppAssets.storesvg,
                width: 21,
                height: 21,
                color: AppColors.primaryColor,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(assetName: AppAssets.searchsvg, width: 25, height: 16),
              activeIcon: SvgPic(
                assetName: AppAssets.searchsvg,
                width: 25,
                height: 16,
                color: AppColors.primaryColor,
              ),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(assetName: AppAssets.cartsvg, width: 19, height: 17),
              activeIcon: SvgPic(
                assetName: AppAssets.cartsvg,
                width: 19,
                height: 17,
                color: AppColors.primaryColor,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(
                assetName: AppAssets.favoritesvg,
                width: 21,
                height: 21,
              ),
              activeIcon: SvgPic(
                assetName: AppAssets.favoritesvg,
                width: 21,
                height: 21,
                color: AppColors.primaryColor,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: SvgPic(assetName: AppAssets.usersvg, width: 21, height: 21),
              activeIcon: SvgPic(
                assetName: AppAssets.usersvg,
                width: 21,
                height: 21,
                color: AppColors.primaryColor,
              ),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
