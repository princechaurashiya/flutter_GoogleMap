import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/serch_button.dart';

class Contribution extends StatefulWidget {
  const Contribution({super.key});

  @override
  State<Contribution> createState() => _ContributionState();
}

class _ContributionState extends State<Contribution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchButton(),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30.0, top: 20, right: 30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Prince kumar',
                style: TextStyle(fontSize: 25),
              ),
              const Text('Local Guide. Level 1'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'View your profile',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 1000,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                    Container(
                        height: 100,
                        width: 100,
                        child: const Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage('./assets/images/add_photo.jpeg'),
                            ),
                            Text(
                              'Add photo',
                              style: TextStyle(color: Colors.blue),
                            )
                          ],
                        )),
                  ],
                ),
              ),
              Text('hello ')
            ],
          ),
        ),
      ),
    );
  }
}
