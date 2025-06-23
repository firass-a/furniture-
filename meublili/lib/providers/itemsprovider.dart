import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/model/items.dart';

List<Items> itemsList = [
  Items("Korssi", "chaires", 10.0, "_itemDescription"),
  Items("Tabla", "Tables", 10.0, "_itemDescription"),
  Items("Tabla", "Tables", 10.0, "_itemDescription"),
  Items("Tabla", "Tables", 10.0, "_itemDescription"),
  Items("Tabla", "Tables", 10.0, "_itemDescription"),
];

final itemsProvider = Provider((ref) {
  return itemsList;
});
