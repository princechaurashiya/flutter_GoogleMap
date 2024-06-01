import 'package:flutter/material.dart';

class Newlist extends StatelessWidget {
  const Newlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('New list'),
              SizedBox(
                height: 10,
              ),
              Text(
                '🔒 Private 0 places',
                style: TextStyle(
                    color: Color.fromARGB(255, 86, 85, 85), fontSize: 18),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(
                'Save',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
