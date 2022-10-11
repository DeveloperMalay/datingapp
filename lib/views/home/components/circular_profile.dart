import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget {
  const CircularProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1481824429379-07aa5e5b0739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGZha2UlMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              ),
            ));
  }
}
