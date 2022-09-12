import 'package:flutter/material.dart';
import 'package:online_cake_shopping/Screens/HomeScreen.dart';
import 'package:online_cake_shopping/Utils/Common%20Widget.dart';
import 'package:online_cake_shopping/main.dart';

class Offers extends StatefulWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DashBoard()));
        },
        icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,),),
        backgroundColor: Colors.white,
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
      body: Padding(

        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('12% OFF ',style: TextStyle(fontSize: 18,color: Colors.lightBlue),),
                      Text('on Order Above 1700/- ',style: TextStyle(fontSize: 18))
                    ],
                  ),
                  const Text('Use Code :SUPER200 ',style: TextStyle(fontSize: 18,)),
                  const Text('Tips - Applicable on all Orders',style: TextStyle(fontSize: 18,))
                ],
              ),
            ),
            verticalSpace(40),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('50% OFF ',style: TextStyle(fontSize: 18,color: Colors.lightBlue),),
                      Text('on Order Above 1000/- ',style: TextStyle(fontSize: 18))
                    ],
                  ),
                  const Text('Use Code :OFF200 ',style: TextStyle(fontSize: 18,)),
                  const Text('Tips - Applicable on all Orders',style: TextStyle(fontSize: 18,))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
