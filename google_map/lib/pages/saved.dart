import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/serch_button.dart';
import 'package:flutter_application_2/pages/NewList.dart';
import 'package:flutter_application_2/pages/Timeline.dart';
import 'package:flutter_application_2/widget/icon_button.dart';
import 'package:flutter_application_2/widget/yourList.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SearchButton(),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                // color: const Color.fromARGB(255, 239, 236, 236),
                child: Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.home),
                        title: Text('Home'),
                        subtitle: Text(
                          'Set home',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Icon(Icons.work),
                        title: Text('Home'),
                        subtitle: Text(
                          'Set home',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Newlist()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: Color.fromARGB(255, 181, 178, 178)),
                      borderRadius: BorderRadius.circular(25)),
                  child: const Center(
                      child: Text(
                    '+  New list',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: const Text(
                  'Your lists',
                  style: TextStyle(fontSize: 28),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Yourlist(
                  leading: Icon(
                    Icons.favorite_outline,
                    color: Colors.red,
                  ),
                  title: "Favourites"),
              Yourlist(
                  leading: Icon(
                    Icons.flag_circle_outlined,
                    color: Colors.green,
                  ),
                  title: 'Want t go'),
              Yourlist(
                  leading: Icon(
                    Icons.star_outline,
                    color: Color.fromARGB(255, 225, 136, 27),
                  ),
                  title: 'Starred places'),
              Yourlist(
                  leading: Icon(
                    Icons.label_outline,
                    color: Colors.blue,
                  ),
                  title: 'Labelled'),
              Yourlist(
                  leading: Icon(
                    Icons.luggage_outlined,
                    color: Colors.blue,
                  ),
                  title: 'Travel plans'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Visited',
                style: TextStyle(fontSize: 28),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('From your Location History'),
                  Icon(Icons.info_outline),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //below visited image container
              Container(
                height: 150,
                child: ListView.builder(
                    itemCount: 30,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 120,
                              width: 185,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(22),
                                  color: Colors.blue),
                              child: Image.asset(
                                'assets/images/places.jpeg',
                                fit: BoxFit.fitWidth,
                              ),
                            )
                          ],
                        ),
                      );
                    }),
              ),

              // Explore Timeline Button
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Timeline()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                      child: Text(
                    'Explore Timeline',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconsButtojn(icon: Icons.timeline, title: 'Timeline'),
                    IconsButtojn(icon: Icons.trending_up, title: 'Following'),
                    IconsButtojn(icon: Icons.map_outlined, title: 'Maps'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
