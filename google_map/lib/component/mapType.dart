import 'package:flutter/material.dart';

class Maptype extends StatefulWidget {
  String address;
  String name;
  Maptype({super.key, required this.address, required this.name});

  @override
  State<Maptype> createState() => _MaptypeState();
}

class _MaptypeState extends State<Maptype> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              //color: Colors.grey,
              borderRadius: BorderRadius.circular(15)),
          child: Image.asset(widget.address),
        ),
        SizedBox(
          height: 8,
        ),
        Text(widget.name)
      ],
    );
  }
}
