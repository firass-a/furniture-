import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/providers/favoritesprovider.dart';

class Favourites extends ConsumerWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesNotifier);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Favorites",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        toolbarHeight: 80,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, size: 30),
        ),
      ),

      body: favorites.isEmpty
          ? Center(
              child: Text("No items for now", style: TextStyle(fontSize: 20)),
            )
          : ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final favs = favorites.toList()[index];
                if (favorites.isEmpty) {
                  return Center(child: Text("No items here"));
                } else {
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
                        favs.itemName!,
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
                            favs.itCat!,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            "Prix: ${favs.itemPrice} Da",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.favorite_border),
                      ),
                    ),
                  );
                }
              },
            ),
    );
  }
}
