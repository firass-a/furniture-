import 'package:flutter/material.dart';

class Features extends StatelessWidget {
  const Features(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.brightness_1, size: 15.0, color: Colors.orange),
      title: Text(text),
    );
  }
}
