import 'package:datingapp/utils/custom_theme.dart';
import 'package:datingapp/views/search_screen/components/age_slider.dart';
import 'package:datingapp/views/search_screen/components/distance_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double feedbackrate = 0.0;

    return Scaffold(
        appBar: AppBar(title: const Text('Search')),
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
                Expanded(
                  flex: 1,
                  child: CupertinoButton(
                    padding: const EdgeInsets.all(0),
                    color: const Color.fromARGB(255, 227, 227, 255),
                    child: const Center(
                        child: Icon(
                      Icons.tune_outlined,
                      color: Color.fromARGB(255, 93, 90, 241),
                      size: 30,
                    )),
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: CustomTheme.lightViolet,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20))),
                          builder: (context) => SizedBox(
                                height: 200,
                                width: MediaQuery.of(context).size.width,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Distance Range $feedbackrate Km',
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const CustomSlider(),
                                    const Text(
                                      'Show Me',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const Text(
                                      'Age Range',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    const AgeSlider(),
                                  ],
                                ),
                              ));
                    },
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
