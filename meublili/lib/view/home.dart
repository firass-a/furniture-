import 'package:flutter/material.dart';
import 'package:meublili/view/loginpage.dart';
import 'package:meublili/widgets/buttons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5D5BE),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Meublili",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 40,
                ),
              ),
              Text(
                "Modern furniture for modern living",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),
              mybutton("Let get Started", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
