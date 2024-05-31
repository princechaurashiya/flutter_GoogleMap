import 'package:flutter/material.dart';

Widget SearchButton() {
  return Positioned(
    top: 40,
    right: 10,
    left: 10,
    child: Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.only(left: 8.0, top: 8),
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10, top: 6),
            child: Icon(Icons.location_on),
          ),
          hintText: 'Search here',
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: EdgeInsets.only(bottom: 2, right: 10),
            child: Icon(Icons.person),
          ),
          suffix: Icon(Icons.mic),
        ),
      ),
    ),
  );
}

class Txtbutons extends StatelessWidget {
  final String text;
  final double width;
  final icon;
  const Txtbutons(
      {super.key, required this.text, required this.icon, required this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: GestureDetector(
        onTap: () {
          print('Tape');
        },
        child: Container(
            height: 35,
            width: width,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 8),
                  child: Icon(icon),
                ),
                Text(text),
              ],
            )),
      ),
    );
  }
}

//Updates/Suggested For you
Widget Resturant() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          // color: Color.fromARGB(255, 244, 247, 247),
          border: Border.all(color: Color.fromARGB(255, 215, 209, 209))),
      height: 370,
      width: 300,
      child: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('./assets/images/imae1.webp'),
            ),
            title: Text('Five Star '),
            subtitle: Text('Someone you may know'),
          ),
          Container(
            height: 220,
            width: 280,
            child: Image(
                fit: BoxFit.fitWidth,
                image: AssetImage('./assets/images/food_image.jpg')),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Container(
                width: 90,
                child: const Row(
                  children: [
                    Icon(
                      Icons.person_add_alt,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Follow',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ],
                ),
              ))
        ],
      ),
    ),
  );
}
