import 'package:flutter/material.dart';
import 'package:meublili/model/items.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({
    super.key,
    required this.items,
  });

  final List<Items> items;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          final its = items[index];
          return Card(
            color: Colors.grey[100],
            elevation: 5.0,
            child: ListTile(
              leading: Icon(
                Icons.chair,
                size: 50,
                color: Colors.orange,
              ),
              title: Text(
                its.itemName!,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    its.itCat!,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Prix: ${its.itemPrice} Da",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
              ),
            ),
          );
        },
      ),
    );
  }
}
