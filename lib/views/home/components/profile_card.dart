import 'package:flutter/cupertino.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://images.unsplash.com/photo-1609132718484-cc90df3417f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFrZSUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                height: 400.0,
                fit: BoxFit.cover,
              ),
            ),
          );
        });
  }
}
