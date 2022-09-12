import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:online_cake_shopping/Screens/HomeScreen.dart';

import 'Screens/ContactUs.dart';
import 'Screens/LoginPage.dart';
import 'Screens/MyAccount.dart';
import 'Screens/Offers.dart';
import 'Screens/RegistrationPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: LoginPage()));
}

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

int currentPageIndex = 0;
List<Widget> screen = [HomeScreen(), Offers(), ContactUs(), MyAccount()];

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          currentIndex: currentPageIndex,
          onTap: (val) {
            setState(() {
              currentPageIndex = val;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.local_offer_sharp,
                ),
                label: 'Offer'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.help_sharp,
                ),
                label: 'Contact Us'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_pin_rounded), label: 'MyAccount')
          ],
        ),
        body: screen[currentPageIndex]);
  }
}
