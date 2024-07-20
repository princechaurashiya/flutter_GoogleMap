import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/bottomNavBar.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: BottombarNav(),
    );
  }
}
