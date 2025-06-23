class Items {
  String? _itemName;
 final String? _category;
  double? _itemPrice;
  String? _itemDescription;

  Items(this._itemName, this._category,this._itemPrice, this._itemDescription);

  //getters
  String? get itemName => _itemName;
  double? get itemPrice => _itemPrice;
  String? get itemDescription => _itemDescription;
  String? get itCat => _category;

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
