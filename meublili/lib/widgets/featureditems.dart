import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/model/items.dart';
import 'package:meublili/providers/favoritesprovider.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({super.key, required this.items});

  final List<Items> items;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final favs = ref.watch(favoritesNotifier);

        return Expanded(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              final its = items[index];
              final isfave = favs.contains(its);
              return Card(
                color: Colors.grey[100],
                elevation: 5.0,
                child: ListTile(
                  leading: Icon(Icons.chair, size: 50, color: Colors.orange),
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
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "Prix: ${its.itemPrice} Da",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      if (isfave) {
                        ref.read(favoritesNotifier.notifier).deleteItem(its);
                      } else {
                        ref.read(favoritesNotifier.notifier).addItem(its);
                      }
                    },
                    icon: Icon(
                      Icons.favorite_border,
                      color: isfave ? Colors.red : null,
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
