// ignore: non_constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/model/categories.dart';
import 'package:meublili/model/items.dart';

List<Category> catgories = [
  Category('assets/chair.png', "Chairs", [
    Items("Korssi", "chaires" , 10.0, "_itemDescription" ),
  ]),
  Category('assets/table.png', "Tables", [
    Items("Tabla", "Tables" , 10.0, "_itemDescription"),
  ]),
  Category('assets/seater-sofa.png', "Sofas", [
    Items("_itemName" , "chaires" ,10.0, "_itemDescription"),
  ]),
  Category('assets/bed.png', "Beds", [
    Items("_itemName", "chaires" ,10.0, "_itemDescription"),
  ]),
  Category('assets/warehouse.png', "Storage", [
    Items("_itemName", "chaires" ,10.0, "_itemDescription"),
  ]),
  Category('assets/lamp.png', "Lighting", [
    Items("_itemName", "chaires" ,10.0, "_itemDescription"),
  ]),
];

final categoriesProvider = Provider((ref) {
  return catgories;
});
