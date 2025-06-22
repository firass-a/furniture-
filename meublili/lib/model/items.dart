
class Items {
  String? _itemName;
  double? _itemPrice;
  String? _itemDescription;

  Items(this._itemName, this._itemPrice, this._itemDescription);

  //getters
  void get itemName => _itemName;
  void get itemPrice => _itemPrice;
  void get itemDescription => _itemDescription;

  //setters

  void setName(String name) {
    _itemName = name;
  }

  void setPrice(double price) {
    _itemPrice = price;
  }

  void setDesc(String description) {
    _itemDescription = description;
  }
}
