import 'package:flutter/material.dart';

// ignore: camel_case_types, must_be_immutable
class mybutton extends StatelessWidget {
  final String txt;
  Function onP;

  mybutton(this.txt, this.onP, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: TextButton(
          onPressed: () {
            onP();
          },
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class Actionn extends StatelessWidget {
  const Actionn({super.key, required this.clr1, this.action, this.fn});

  final Color? clr1;
  final String? action;
  final Function()? fn;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: clr1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: fn ,
        child: Text(
          action!,
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }
}
