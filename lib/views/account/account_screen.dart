import 'package:datingapp/utils/custom_theme.dart';
import 'package:datingapp/views/payment/payment_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              CircleAvatar(
                foregroundColor: CustomTheme.violet,
                radius: 90,
                child: Image.network(
                    'https://cdn2.iconfinder.com/data/icons/avatars-99/62/avatar-370-456322-512.png'),
              ),
              Positioned(
                top: 120,
                left: 130,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_rounded,
                      size: 40,
                      color: CustomTheme.violet,
                    )),
              )
            ],
          ),
          const Text(
            'Somen',
            style: TextStyle(
                color: CustomTheme.violet,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 215,
          ),
          Container(
            height: 288,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: CustomTheme.lightViolet,
            ),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        transitionDuration: const Duration(milliseconds: 500),
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const PaymentScreen(),
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
                  leading: const Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  title: const Text(
                    'Buy Package',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                const Divider(
                  color: Colors.white,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.password,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Change Password',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
