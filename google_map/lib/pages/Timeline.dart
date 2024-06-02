import 'package:flutter/material.dart';

class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            title: Text('Timeline'),
            bottom: const TabBar(isScrollable: true, tabs: [
              Tab(
                child: Text('Day'),
              ),
              Tab(
                child: Text('Trips'),
              ),
              Tab(
                child: Text('Insights'),
              ),
              Tab(
                child: Text('Places'),
              ),
              Tab(
                child: Text('Cities'),
              ),
              Tab(
                child: Text('World'),
              ),
            ]),
          ),
          body: Center(
            child: TabBarView(children: [
              Center(
                child: Container(
                  height: 300,
                  width: 300,
                  child: Image.asset('assets/images/tryagain.jpeg'),
                ),
              )
            ]),
          )),
    );
  }
}
