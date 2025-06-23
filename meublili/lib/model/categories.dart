
import 'package:meublili/model/items.dart';

class Category {
  String? _categoImg;
  late String _name;
  late List<Items> _items;

  Category(String im, String name, List<Items> items) {
    _name = name;
    _items = items;
    _categoImg = im ;
  }

  String get ctgName => _name;
  List<Items> get itemsList => _items;
  String? get categoImg => _categoImg;
}
