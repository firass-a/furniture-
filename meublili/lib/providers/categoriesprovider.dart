// ignore: non_constant_identifier_names

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/model/categories.dart';
import 'package:meublili/model/items.dart';

List<Category> catgories = [
  Category('assets/chair.png', "Chairs", [
    Items("_itemName", 10.0, "_itemDescription"),
  ]),
  Category('assets/table.png', "Tables", []),
  Category('assets/seater-sofa.png', "Sofas", []),
  Category('assets/bed.png', "Beds", []),
  Category('assets/warehouse.png', "Storage", []),
  Category('assets/lamp.png', "Lighting", []),
];

final categoriesProvider = Provider((ref) {
  return catgories;
});
