import 'package:flutter/material.dart';

class Newlist extends StatefulWidget {
  const Newlist({super.key});

  @override
  State<Newlist> createState() => _NewlistState();
}

class _NewlistState extends State<Newlist> {
  bool _isSwitched = false;
  String _selectedFruit = 'Apple';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Column(
          children: <Widget>[
            SizedBox(
              height: 8,
            ),
            Text('New list'),
            SizedBox(
              height: 10,
            ),
            Text(
              '🔒 Private 0 places',
              style: TextStyle(
                  color: Color.fromARGB(255, 86, 85, 85), fontSize: 15),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30.0),
            child: Text(
              'Save',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: 170,
                //width: 190,
                child: Image.asset('assets/images/choseicon.jpeg'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(18)),
                    hintText: 'Name this list',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    hintText: 'Give this list description',
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('LIST TYPE'),
            ),
            ListTile(
                title: Text('Private'),
                subtitle: Text('Only you can view and edit'),
                trailing: Radio<String>(
                  value: 'Private',
                  groupValue: _selectedFruit,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedFruit = value!;
                    });
                  },
                )),
            ListTile(
                title: Text('Shared'),
                subtitle: Text('You can let others view or edit'),
                trailing: Radio<String>(
                  value: 'Shared',
                  groupValue: _selectedFruit,
                  onChanged: (String? value) {
                    setState(() {
                      _selectedFruit = value!;
                    });
                  },
                )),
            ListTile(
              title: Text('Customise list order'),
              trailing: Transform.scale(
                scale: 0.6,
                child: Switch(
                  value: _isSwitched,
                  onChanged: (bool value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
