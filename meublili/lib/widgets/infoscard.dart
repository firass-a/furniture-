import 'package:flutter/material.dart';

class InfosCard extends StatelessWidget {
  final String items;
  final String number;
  const InfosCard(this.number , this.items, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(
              number,
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            Text(items),
          ],
        ),
      ),
    );
  }
}
