import 'package:flutter/material.dart';
import 'package:flutter_application_2/component/serch_button.dart';
import 'package:flutter_application_2/widget/Post2hoto.dart';
import 'package:flutter_application_2/widget/update_place.dart';

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
        automaticallyImplyLeading: false,
        title: SearchButton(),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 20, right: 20),
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
              Updateplaceicon(),
              Container(
                  height: 390,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 228, 231, 234),
                      border:
                          Border.all(color: Color.fromARGB(255, 199, 197, 197)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: EdgeInsets.all(.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ListTile(
                          title: Text(
                            'Earn your New\nContributor badge',
                            style: TextStyle(fontSize: 24),
                          ),
                          subtitle: Text(
                              'Get startde by making these\nsimple updates'),
                          trailing: CircleAvatar(
                            maxRadius: 50,
                            backgroundImage: AssetImage(
                              'assets/images/lock.jpeg',
                            ),
                          ),
                        ),
                        Post2photo(),
                        Post2photo(),
                        Post2photo(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
