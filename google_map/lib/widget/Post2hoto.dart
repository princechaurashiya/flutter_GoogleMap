import 'package:flutter/material.dart';

Widget Post2photo() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(255, 209, 206, 206)),
          borderRadius: BorderRadius.circular(8)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Post 2 photos'),
          ),
          SizedBox(
            width: 18,
          ),
          Text('0/2'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
    ),
  );
}
