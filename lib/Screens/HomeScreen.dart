import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_cake_shopping/Screens/FindYourPerfectGift.dart';
import 'package:online_cake_shopping/Screens/Logout.dart';
import 'package:online_cake_shopping/Screens/subCategories.dart';

import '../Utils/ListForCakeName.dart';
import 'ContactUs.dart';
import 'MyAccount.dart';
import 'Offers.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'TermsAndConsition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<String> loadAsset() async {
    var s = await rootBundle.loadString('terms.docx');
    print(s);
    return s;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [

              Text(
                'Delicious.com',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                    fontFamily: 'Billabong'),
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.black,
                ))
          ],
        ),
        drawer: Drawer(
          // backgroundColor: Colors.black,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.purple, Colors.deepPurpleAccent])),
                  accountName: Text('Tejashri'),
                  accountEmail: Text('tejnikam27@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(
                      'profile.jpg',
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext index) => ContactUs()));
                  },
                  child: Text(
                    '  Contact Us',
                  ),
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Text('Share',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext index) =>
                            const TermsAndConditions()));
                  },
                  child: Text(
                    '  Terms and Conditions',
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                         Navigator.push(
                              context,
                          MaterialPageRoute(
                       builder: (BuildContext context) =>
                         Logout()));


                  },
                  child: Text(
                    'Logout',
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SafeArea(

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                FindYourPerfectGift()));
                  },
                  shape: Border.all(color: Colors.black),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.card_giftcard_sharp,
                        color: Colors.redAccent,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Find your Perfect Gifts ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 110,
                      ),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  ),
                ),
              ),
              Container(
                height: 140,
                width: double.infinity,
                color: Colors.blue,
                child: ImageSlideshow(
                  indicatorColor: Colors.blue,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: true,
                  children: [
                    Image.asset(
                      'offer1.jpg',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'offer2.jpg',
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'offer3.jpg',
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: gridCommonList.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    SubCategories(gridCommonList[index]),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                gradient: const LinearGradient(
                                    colors: [Colors.brown, Colors.white24],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter)),
                            padding: EdgeInsets.all(6),
                            height: 130,
                            width: 130,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    height: 120,
                                    width: 120,
                                    child: Image(
                                        image: AssetImage(
                                      gridCommonList[index]['image'],
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    gridCommonList[index]['name'],
                                    style: const TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Billabong'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
