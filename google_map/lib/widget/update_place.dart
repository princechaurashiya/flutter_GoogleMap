import 'package:flutter/material.dart';

class Updateplaceicon extends StatelessWidget {
  const Updateplaceicon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
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
                ));
          }),
    );
  }
}
