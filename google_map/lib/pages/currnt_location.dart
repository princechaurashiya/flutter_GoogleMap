import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/mapType.dart';
import 'package:flutter_application_2/component/serch_button.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserCurrentLocation extends StatefulWidget {
  const UserCurrentLocation({super.key});

  @override
  State<UserCurrentLocation> createState() => _UserCurrentLocationState();
}

class _UserCurrentLocationState extends State<UserCurrentLocation> {
  final Completer<GoogleMapController> _controller = Completer();
  late MapType m_type;

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

  @override
  void initState() {
    // TODO: implement initState

    m_type = MapType.normal;
  }

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
            mapType: m_type,
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
        Positioned(
            top: 180,
            right: 20,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                onPressed: () {
                  // Show a bottom sheet using GetX
                  Get.bottomSheet(
                    Container(
                        height: 500,
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 20, right: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Map type',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      icon: Icon(Icons.cancel_outlined))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 30.0, right: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        m_type = MapType.normal;
                                      });
                                    },
                                    child: Maptype(
                                      address: 'assets/images/default.jpeg',
                                      name: 'Default',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        m_type = MapType.satellite;
                                      });
                                    },
                                    child: Maptype(
                                      address: 'assets/images/satelite.jpeg',
                                      name: 'Satellite',
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        m_type = MapType.terrain;
                                      });
                                    },
                                    child: Maptype(
                                      address: 'assets/images/terrain.jpeg',
                                      name: 'Terrain',
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )),
                  );
                },
                icon: const Icon(
                  Icons.layers_outlined,
                  size: 28,
                  // color: Colors.grey,
                ),
              ),
            ))
      ]),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          loadLocation();
        },
        child: Icon(Icons.gps_fixed_sharp),
      ),
    );
  }
}
