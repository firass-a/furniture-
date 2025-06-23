

import 'package:flutter/material.dart';
import 'package:meublili/model/categories.dart';

class Catgories extends StatelessWidget {
  const Catgories({
    super.key,
    required this.categories,
  });

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final ctg = categories[index];
    
          return Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ctg.categoImg!, height: 45, width: 45),
                  Text(ctg.ctgName),
                  Text("Items :${ctg.itemsList.length}"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
