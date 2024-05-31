import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/serch_button.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserCurrentLocation extends StatefulWidget {
  const UserCurrentLocation({super.key});

  @override
  State<UserCurrentLocation> createState() => _UserCurrentLocationState();
}

class _UserCurrentLocationState extends State<UserCurrentLocation> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(49.271882, -123.0950288), zoom: 14.4746);

  final List<Marker> _markers = <Marker>[
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(49.271882, -123.0950288),
        infoWindow: InfoWindow(title: 'Columbia college Canada'))
  ];

  loadLocation() {
    getUserCurrentLocation().then((value) async {
      print('My currnt location');
      print(value.latitude.toString() + ' ' + value.latitude.toString());

      _markers.add(Marker(
          markerId: MarkerId('2'),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: InfoWindow(title: 'My current location')));

      CameraPosition cameraPosition = CameraPosition(
          target: LatLng(value.latitude, value.longitude), zoom: 14);
      final GoogleMapController controller = await _controller.future;

      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

      setState(() {});
    });
  }

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((Value) {})
        .onError((error, stackTrace) {
      print("error" + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

// BtNavBar

//   int current_index_value = 0;

// void onChangePage(int index){
//   setState(() {
//     current_index_value = index;
//   });
// }

// List <Widget> pages[

//    Center(
//       child: Text('Home '),
//     ),
//     Center(
//       child: Text('Card'),
//     ),
//     Center(
//       child: Text('Like'),
//     ),
//     Center(
//       child: Text('Profile'),
//     )

// ];

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   //loadLocation();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar:
      // // body: pages[current_index_value],

      //  BottomNavigationBar(
      //   currentIndex: current_index_value,
      //   type: BottomNavigationBarType.shifting,
      //         onTap: onChangePage,
      //     backgroundColor: Colors.blue,
      //     elevation: 1,
      //     selectedItemColor: Colors.pink,
      //     //fixedColor: Colors.red,
      //     unselectedItemColor: Colors.black,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.location_on_outlined), label: 'Explore'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.train_outlined), label: 'Go'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.bookmark_outline), label: 'Saved'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.add_outlined), label: 'Contribute'),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.notifications_outlined), label: 'Updates'),
      //     ]),
      // appBar: AppBar(
      //   backgroundColor: Colors.green,
      //   title: Text('User current location'),
      // ),
      body: Stack(children: <Widget>[
        GoogleMap(
            initialCameraPosition: _kGooglePlex,
            mapType: MapType.satellite,
            markers: Set<Marker>.of(_markers),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            }),
        SearchButton(),
        const Positioned(
            top: 120,
            left: 10,
            right: 10,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Txtbutons(
                    text: 'Restaurants',
                    icon: (Icons.restaurant),
                    width: 140,
                  ),
                  Txtbutons(
                    text: 'Hotels',
                    icon: (Icons.hotel),
                    width: 110,
                  ),
                  Txtbutons(
                    text: 'Petro',
                    icon: (Icons.local_gas_station),
                    width: 100,
                  ),
                  Txtbutons(
                    text: 'Groceries',
                    icon: (Icons.shopping_cart),
                    width: 125,
                  ),
                  Txtbutons(
                    text: 'Coffee',
                    icon: (Icons.coffee_outlined),
                    width: 110,
                  ),
                  Txtbutons(
                    text: 'Attractions',
                    icon: (Icons.attractions),
                    width: 135,
                  ),
                  Txtbutons(
                    text: 'Shopping',
                    icon: (Icons.shopping_bag_outlined),
                    width: 125,
                  ),
                  Txtbutons(
                    text: 'More',
                    icon: (Icons.more_outlined),
                    width: 100,
                  ),
                ],
              ),
            )),
      ]),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loadLocation();
        },
        child: Icon(Icons.local_activity),
      ),
    );
  }
}
