import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meublili/providers/categoriesprovider.dart';
import 'package:meublili/providers/itemsprovider.dart';
import 'package:meublili/widgets/btbar.dart';
import 'package:meublili/widgets/categories.dart';
import 'package:meublili/widgets/featureditems.dart';

class BuyerHomePage extends ConsumerWidget {
  const BuyerHomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);
    final items = ref.watch(itemsProvider);
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shadowColor: Colors.black,
          child: BtBar(),
        ),

        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Morning!",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Find your desired furniture ",
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_active_outlined, size: 30),
                  ),
                ],
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  hintText: 'What are you looking for ? ',
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Our categories :",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              Catgories(categories: categories),
              SizedBox(height: 20),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    FeaturedItems(items: items),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
