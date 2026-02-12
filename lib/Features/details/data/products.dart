import 'package:flutter/material.dart';
import 'package:green_mart/cores/constants/app_assets.dart';

class Products {
  String? id;
String? image;
String? title;
String? categoryid;
String? quatityperprice;
String? price;
String? description;
String? tag;
Products({
  this.id,
  this.image,
  this.title,
  this.quatityperprice,
  this.price,
  this.description,
  this.tag,
  this.categoryid
 });
 static List<Products> offerproducts = [
  Products(
    id: '1',
    description: "Crisp and refreshing, apples are packed with fiber and natural sweetness, making them a versatile fruit for snacking or baking.",
    image:AppAssets.apple,
    title: "Apples",
    quatityperprice: "1KG",
    price: "\$4.99",
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '2',
    description: "Aromatic and slightly spicy, ginger is prized for its unique taste and health benefits, often used in teas, stir-fries, and remedies",
    image: AppAssets.ginger,
    title: "Ginger",
    quatityperprice: "1KG",
    price: "\$3.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '3',
    description: "Soft and naturally sweet, bananas are a convenient energy boost, loaded with potassium and ideal for smoothies or quick snacks.",
    image: AppAssets.banana,
    title: "Banana",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '4',
    description: "Fresh peppers bring a vibrant crunch and a mildly spicy flavor, rich in vitamins and perfect for enhancing savory dishes",
    image: AppAssets.pepper,
    title: "Pepper",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  )
  ];
  static List<Products> bestproducts = [
  Products(
    id: '1',
   description: "Crisp and refreshing, apples are packed with fiber and natural sweetness, making them a versatile fruit for snacking or baking.",
    image: AppAssets.apple,
    title: "Apples",
    quatityperprice: "1KG",
    price: "\$4.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '2',
    image: AppAssets.banana,
    description: "Soft and naturally sweet, bananas are a convenient energy boost, loaded with potassium and ideal for smoothies or quick snacks.",
    title: "Bananas",
    quatityperprice: "1KG",
    price: "\$3.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '3',
     description: "Aromatic and slightly spicy, ginger is prized for its unique taste and health benefits, often used in teas, stir-fries, and remedies",
    image: AppAssets.ginger,
    title: "Fresh Ginger",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '4',
    description: "Fresh peppers bring a vibrant crunch and a mildly spicy flavor, rich in vitamins and perfect for enhancing savory dishes",
    image: AppAssets.pepper,
    title: "Fresh Pepper",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  )
  ];
  static List<Products> allproducts = [
  Products(
    id: '5',
   description: "A lighter version of cola with reduced or zero sugar, offering the same fizzy taste with fewer calories.",
    image: AppAssets.dietcola,
    categoryid: "1",
    title: "Diet Cola",
    quatityperprice: "355ml",
    price: "\$4.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '6',
    image: AppAssets.cola,
    description: "Classic sweet and refreshing carbonated drink with a bold cola flavor.",
    title: "Cola",
    categoryid  : "1",
    quatityperprice: "325ml",
    price: "\$3.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '7',
    description: "Popular cola beverage known for its slightly sweeter, citrusy twist compared to traditional cola.",
    image: AppAssets.pepsi,
    title: "Pepsi",
    quatityperprice: "330ml",
    categoryid  : "1",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '8',
    description: "Bright, tangy, and naturally sweet juice made from fresh oranges, rich in vitamin C.",
     image: AppAssets.orangejuice,
    title: "Orange Juice",
    quatityperprice: "2L",
    categoryid  : "1",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '9',
    description: "Smooth, mildly sweet juice with a crisp apple flavor, often enjoyed chilled.",
     image: AppAssets.applejuice,
    title: "Apple Juice",
    quatityperprice: "2L",
    categoryid  : "1",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '10',
    description: "Clear lemon‑lime soda with a crisp, refreshing taste and a bubbly kick.",
      image: AppAssets.sprite,
    title: "Sprite",
    categoryid  : "1",
    quatityperprice: "325ml",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '1',
   description: "Crisp and refreshing, apples are packed with fiber and natural sweetness, making them a versatile fruit for snacking or baking.",
    image: AppAssets.apple,
    title: "Apples",
    categoryid  : "2",
    quatityperprice: "1KG",
    price: "\$4.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '2',
    image: AppAssets.banana,
    description: "Soft and naturally sweet, bananas are a convenient energy boost, loaded with potassium and ideal for smoothies or quick snacks.",
    title: "Bananas",
    categoryid  : "2",
    quatityperprice: "1KG",
    price: "\$3.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '3',
     description: "Aromatic and slightly spicy, ginger is prized for its unique taste and health benefits, often used in teas, stir-fries, and remedies",
    image: AppAssets.ginger,
    title: "Fresh Ginger",
    categoryid  : "2",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  ),
  Products(
    id: '4',
    description: "Fresh peppers bring a vibrant crunch and a mildly spicy flavor, rich in vitamins and perfect for enhancing savory dishes",
    image: AppAssets.pepper,
    title: "Fresh Pepper",
    categoryid  : "2",
    quatityperprice: "1KG",
    price: "\$5.99"
    ,
    tag: UniqueKey().toString(),
  )
  ];

   static List<Products> getProductsbycategory(String id){
    return allproducts.where((product) => product.categoryid == id).toList();
  }
  static List<Products> getProductsbyname(String name){
    return allproducts.where((product) => (product.title??"").toLowerCase().contains(name.toLowerCase())).toList();
  }
}
