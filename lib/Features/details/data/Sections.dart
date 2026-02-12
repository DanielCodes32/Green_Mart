import 'package:flutter/material.dart';
import 'package:green_mart/cores/constants/app_assets.dart';
class Sections {
  String? id;
String? image;
String? title;
String? color;
String? categoryid;
String? tag;
Sections({
  this.id,
  this.image,
  this.title,
  this.color,
  this.tag,
  this.categoryid
 });
 static List<Sections> section = [
   Sections(
      id: '11',
      image: AppAssets.beverages,
      title: 'Beverages',
      color: '0xFFB7DFF5',
      categoryid: '1',
      tag: UniqueKey().toString(),
    ),
    Sections(
      id: '12',
      image: AppAssets.vegtables,
      title: 'Vegtables',
      color: '0xff53B175',
      categoryid: '2',
      tag: UniqueKey().toString(),
    ),
    Sections(
      id: '13',
      image: AppAssets.dairy,
      title: 'Dairy',
      categoryid: '3',
      color: '0xFFFDE598',
      tag: UniqueKey().toString(),
    ),
    Sections(
      id: '14',
      image: AppAssets.oils,
      title: 'Oils',
      categoryid: '4',
      color: '0xFFF8A44c',
      tag: UniqueKey().toString(),
    ),
    Sections(
      id: '15',
      image: AppAssets.meat,
      title: 'Meat',
      categoryid: '5',
      color: '0xffF7A593',
      tag: UniqueKey().toString(),
    ),
    Sections(
      id: '16',
      image: AppAssets.bakery,
      title: 'Bakery',
      color: '0xffD3B0E0',
      categoryid: '6',
      tag: UniqueKey().toString(),
    ),
   
 ];
}