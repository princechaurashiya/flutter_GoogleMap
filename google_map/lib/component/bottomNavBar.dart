import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/serch_button.dart';
import 'package:flutter_application_2/pages/contribution.dart';
import 'package:flutter_application_2/pages/currnt_location.dart';
import 'package:flutter_application_2/pages/saved.dart';
import 'package:flutter_application_2/pages/update.dart';

class BottombarNav extends StatefulWidget {
  const BottombarNav({super.key});

  @override
  State<BottombarNav> createState() => _BottombarNavState();
}

class _BottombarNavState extends State<BottombarNav> {
  int current_index_value = 0;

  get body => null;

  void onChangePage(int index) {
    setState(() {
      current_index_value = index;
    });
  }

  List<Widget> pages = [
    UserCurrentLocation(),
    UserCurrentLocation(),
    Saved(),
    Contribution(),
    Updates()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[current_index_value],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index_value,
          type: BottomNavigationBarType.shifting,
          onTap: onChangePage,
          backgroundColor: Colors.blue,
          elevation: 1,
          selectedItemColor: Colors.blue,
          //fixedColor: Colors.red,
          unselectedItemColor: Colors.black,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.train_outlined), label: 'Go'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_outline), label: 'Saved'),
            BottomNavigationBarItem(
                icon: Icon(Icons.add_outlined), label: 'Contribute'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined), label: 'Updates'),
          ]),
    );
  }
}

//Update/Following
class Following extends StatelessWidget {
  const Following({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "The latest from people you \n follow",
            style: TextStyle(fontSize: 28),
          ),
          const SizedBox(height: 15),
          const Text(
            'See reviews, photos and updates from people and businesses that you follow on Google Maps',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(
            height: 20,
          ),

          // Suggested for you
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Suggested for you',
                style: TextStyle(fontSize: 20),
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 1,
                          child: Text("Menage your areas"),
                        ),
                        const PopupMenuItem(
                          value: 2,
                          child: Text("Send feedback"),
                        ),
                        const PopupMenuItem(
                          value: 3,
                          child: Text("Learn more"),
                        ),
                      ]),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          //Resturant Section
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Resturant(),
                Resturant(),
                Resturant(),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('Tap');
            },
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: 45,
              child: Center(
                  child: Text(
                'See more',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              )),
            ),
          ),
          Text(
            'For You recommendations have a new \nhome',
            style: TextStyle(fontSize: 20),
          ),
          Text(
              'See the latest in your area from locals, nearby \nbusinesses and more -now in Explore'),
          SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                print("hello");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottombarNav()));
              },
              child: Text(
                'Go To Explore',
                style: TextStyle(color: Colors.blue),
              ))
        ],
      ),
    );
  }
}
