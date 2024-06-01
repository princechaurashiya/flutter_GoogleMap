import 'package:flutter/material.dart';

class Yourlist extends StatelessWidget {
  var leading;
  String title;
  Yourlist({
    super.key,
    required this.leading,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: leading,
          title: Text(title),
          subtitle: Text('Private 0 places'),
          trailing: Icon(Icons.more_vert),
        ),
        Divider(
          height: 1,
          color: const Color.fromARGB(255, 203, 199, 199),
        ),
      ],
    );
  }
}
