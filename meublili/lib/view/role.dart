import 'package:flutter/material.dart';
import 'package:meublili/view/buyerhomepage.dart';
import 'package:meublili/view/sellerhomepage.dart';
import 'package:meublili/widgets/rolecard.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// Picking which role you want to take screen

class Role extends StatefulWidget {
  const Role({super.key});

  @override
  State<Role> createState() => _RoleState();
}

class _RoleState extends State<Role> {
  final PageController _pageController = PageController();
  List<RoleCard> rolesList = [
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
  ];
  int _currentP = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentP = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFE5D5BE),
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
                SizedBox(height: 10),
                Expanded(
                  child: SizedBox(
                    child: PageView(
                      controller: _pageController,
                      children: [rolesList[0], rolesList[1]],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _pageController,
                  count: rolesList.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 16,
                    dotWidth: 16,
                    expansionFactor: 3,
                    activeDotColor: Colors.orange,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange,
                  ),
                  child: TextButton(
                    onPressed: () {
                      _currentP == 0
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BuyerHomePage(),
                              ),
                            )
                          : Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SellerHomePgae(),
                              ),
                            );
                    },
                    child: Text(
                      _currentP == 0
                          ? "Continue as Buyer"
                          : "Continue as Seller",
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
