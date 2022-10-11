import 'package:datingapp/views/account/account_screen.dart';
import 'package:datingapp/views/chat/chat_screen.dart';
import 'package:datingapp/views/favorite/faovorite_screen.dart';
import 'package:datingapp/views/home/home_screen.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 6,
                spreadRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: const TabBar(tabs: [
            Tab(
              icon: Icon(Icons.home),
              text: "Home",
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: "Favorite",
            ),
            Tab(
              icon: Icon(Icons.chat_bubble),
              text: "Chat",
            ),
            Tab(
              icon: Icon(Icons.person),
              text: "Account",
            ),
          ]),
        ),
        body: const TabBarView(children: [
          HomeScreen(),
          FavoriteScreen(),
          ChatScreen(),
          AccountScreen(),
        ]),
      ),
    );
  }
}
