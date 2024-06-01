import 'package:flutter/material.dart';

class IconsButtojn extends StatelessWidget {
  var icon;
  String title;
  IconsButtojn({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: Colors.grey),
          ),
          child: Icon(
            icon,
            color: Colors.blue,
          ),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
