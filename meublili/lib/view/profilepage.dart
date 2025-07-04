import 'package:flutter/material.dart';
import 'package:meublili/widgets/infoscard.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final List listElements = [
      [Icon(Icons.person), "Edit Profile", Icon(Icons.arrow_forward_sharp)],
      [Icon(Icons.inbox), "Orders", Icon(Icons.arrow_forward_sharp)],
      [
        Icon(Icons.notification_add),
        "Notifications",
        Icon(Icons.arrow_forward_sharp),
      ],
      [
        Icon(Icons.card_giftcard),
        "My balance",
        Icon(Icons.arrow_forward_sharp),
      ],
      [Icon(Icons.settings), "Settings", Icon(Icons.arrow_forward_sharp)],
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Profile",
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
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.edit, size: 30)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/woman.png"),
                      radius: 50,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Firas Cherfa",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "kingsSlayer@gmail.com",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        Text(
                          "0793440264",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InfosCard(12.toString(), "Orders"),
                  InfosCard(5.toString(), "Favorites"),
                  InfosCard(10.toString(), "Reviews"),
                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: listElements.length,
                  itemBuilder: (context, index) {
                    final element = listElements[index];
                    return ListTile(
                      leading: element[0],
                      title: Text(element[1]),
                      trailing: element[2],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Switch to Seller !!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
