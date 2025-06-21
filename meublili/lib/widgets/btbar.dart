import 'package:flutter/material.dart';

class BtBar extends StatelessWidget {
  const BtBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton( onPressed: (){} ,
        icon : Icon(Icons.house_outlined, 
        size: 40, color: Colors.grey)),
        Icon(Icons.search, size: 40, color: Colors.grey),
        Icon(Icons.chat_bubble_outline, size: 40, color: Colors.grey),
        Icon(
          Icons.favorite_border_outlined,
          size: 40,
          color: Colors.grey,
        ),
        Icon(Icons.person_2_outlined, size: 40, color: Colors.grey),
      ],
    );
  }
}
