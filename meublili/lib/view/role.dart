import 'package:flutter/material.dart';
import 'package:meublili/widgets/rolecard.dart';

// Picking which role you want to take screen

class Role extends StatefulWidget {
  const Role({super.key});

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              children: [
                Text(
                  "Welcome to Meublili",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "How do you want to start ?",
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                SizedBox(height: 25),
                Expanded(
                  child: SizedBox(
                    child: PageView(
                      children: [
                        RoleCard(
                          "I'm a Buyer",
                          "Shop for furniture",
                          "Discover beautiful furniture pieces from trusted sellers worldwide",
                          [
                            "Browse thousands of items",
                            "Save to wishlist",
                            "Chat with sellers",
                            "Secure payment",
                          ],
                        ),
                        RoleCard(
                          "I'm a Seller",
                          "Sell your furniture",
                          "Turn your furniture into profit and reach customers globally",
                          [
                            "List your products",
                            "Manage inventory",
                            "Track analytics",
                            "Connect with buyers",
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Continue As Buyer",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
