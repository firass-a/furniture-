import 'package:meublili/model/items.dart';

class Category {
  late String _name;
  late List<Items> _items;

  Category(String name, List<Items> items) {
    _name = name;
    _items = items;
  }
}
