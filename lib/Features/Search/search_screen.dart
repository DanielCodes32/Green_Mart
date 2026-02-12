import 'package:flutter/material.dart';
import 'package:green_mart/Features/details/data/products.dart';
import 'package:green_mart/cores/styles/app_colors.dart';
import 'package:green_mart/cores/widgets/custom_form_field.dart';
import 'package:green_mart/cores/widgets/item_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String search = '';
  final FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    // Request focus when the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      focusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomFormField(
          hintText: 'Search Store',
          borderRadius: BorderRadius.circular(13),
          prefixIcon: Icon(Icons.search, color: AppColors.blackColor),
          onchange: (value) {
            setState(() {
              search = value ?? '....';
            });
          },
          focusnode: focusNode,
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) =>
            ItemCard(product: Products.getProductsbyname(search)[index]),
            itemCount: Products.getProductsbyname(search).length,
      ),
    );
  }
}
