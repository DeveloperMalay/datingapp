import 'package:datingapp/utils/custom_theme.dart';
import 'package:datingapp/views/home/components/circular_profile.dart';
import 'package:datingapp/views/home/components/profile_card.dart';
import 'package:datingapp/views/search_screen/search_sceeen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: ListTile(
          title: const Text(
            "Soumen",
            style: TextStyle(
                color: CustomTheme.violet,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          subtitle: const Text('Kolkata'),
          trailing: Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: CustomTheme.lightViolet),
            child: const Icon(
              Icons.notifications_rounded,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          height: 50,
          child: Row(
            children: [
              Expanded(
                flex: 6,
                child: TextField(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const SearchScreen(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                                    begin: const Offset(1, 0), end: Offset.zero)
                                .animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  readOnly: true,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: CustomTheme.violet,
                    ),
                    hintText: "Search By Name",
                    hintStyle: const TextStyle(
                      color: CustomTheme.violet,
                      fontSize: 18,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: CustomTheme.violet,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              // Expanded(
              //   flex: 1,
              //   child: CupertinoButton(
              //     padding: const EdgeInsets.all(0),
              //     color: const Color.fromARGB(255, 227, 227, 255),
              //     child: const Center(
              //         child: Icon(
              //       Icons.tune_outlined,
              //       color: Color.fromARGB(255, 93, 90, 241),
              //       size: 30,
              //     )),
              //     onPressed: () {},
              //   ),
              // ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
          child: CircularProfile(),
        ),
        ListTile(
          title: const Text('Popular Profiles'),
          trailing: TextButton(
            onPressed: () {},
            child: const Text(
              'See All',
              style: TextStyle(color: CustomTheme.violet),
            ),
          ),
        ),
        const SizedBox(
          height: 400,
          child: ProfileCard(),
        ),
      ]),
    );
  }
}
