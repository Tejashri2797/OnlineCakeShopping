import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/ListForCakeName.dart';
import 'FUPGdetails.dart';

class FindYourPerfectGift extends StatefulWidget {
  const FindYourPerfectGift({Key? key}) : super(key: key);

  @override
  State<FindYourPerfectGift> createState() => _FindYourPerfectGiftState();
}

class _FindYourPerfectGiftState extends State<FindYourPerfectGift> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back_ios),
              ),
              Text(
                'Find your Perfect Gift',
                style: TextStyle(fontSize: 20, color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
            child: ListView.separated(
              itemCount: gridCommonList.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FUPGiftdetails(gridCommonList[index]),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,

                      backgroundImage: AssetImage(gridCommonList[index]['image'],
                    ),
                  ),
                  title: Text(gridCommonList[index]['name']),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                height: 20,
                thickness: 10,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
