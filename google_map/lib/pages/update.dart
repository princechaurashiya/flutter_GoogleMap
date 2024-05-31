import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/bottomBar.dart';
import 'package:flutter_application_2/component/serch_button.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            // backgroundColor: Colors.green,
            title: SearchButton(),
            bottom: const TabBar(tabs: [
              Tab(
                child: Text("Following"),
              ),
              Tab(
                child: Text('Notificatons'),
              ),
              Tab(
                child: Text('messages'),
              )
            ]),
          ),
          body: Padding(
            padding: EdgeInsets.all(20.0),
            child: TabBarView(
              children: [
                // Followings
                Following(),
                //Notification

                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('./assets/images/profile_image.avif'),
                        ),
                        title: Text('Set your home address?'),
                        subtitle:
                            Text('Get directions faster in Google \nMaps\n1d'),
                        trailing: Icon(Icons.more_vert),
                      );
                    }),
                Image(
                    fit: BoxFit.fill,
                    image: AssetImage('./assets/images/message.jpeg'))
              ],
            ),
          )),
    );
  }
}
