
import 'package:flutter/material.dart';
import 'package:meublili/widgets/features.dart';

class RoleCard extends StatelessWidget {
  const RoleCard(this.role, this.subrole, this.discription,this.tasks, {super.key});

  final String? role;
  final String? subrole;
  final String? discription;
  final List<String>? tasks;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFF5F7FB),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF8A3FFC), Color(0xFFA64EFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
                color: Colors.purple,
              ),
              child: Center(
                child: Icon(
                  Icons.shopping_bag_outlined,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              role!,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(subrole!, style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 15),
            Text(
              discription!,
              style: TextStyle(fontSize: 20, color: Colors.black87),
            ),
            SizedBox(height: 15),
            Features(tasks![0]),
            Features(tasks![1]),
            Features(tasks![2]),
            Features(tasks![3]),
          ],
        ),
      ),
    );
  }
}
