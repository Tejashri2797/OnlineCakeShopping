import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_cake_shopping/Utils/Common%20Widget.dart';

class FUPGiftdetails extends StatefulWidget {
  Map data;

  FUPGiftdetails(this.data, {Key? key}) : super(key: key);

  @override
  State<FUPGiftdetails> createState() => _FUPGiftdetailsState();
}

class _FUPGiftdetailsState extends State<FUPGiftdetails> {
  List<Map> cakeList = [];

  @override
  void initState() {
    super.initState();
    cakeList = widget.data['details'];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: Size(0, 25),
            child: Divider(
              thickness: 5,
              color: Colors.black,
            ),

          ),
          backgroundColor: Colors.white,
          title: Text(
            widget.data['name'],
            style:
            TextStyle(
              fontSize: 30,
              fontStyle: FontStyle.italic,
              color: Colors.black,decoration: TextDecoration.underline,),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GridView.builder(
              itemCount: cakeList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
              itemBuilder: (context, index) => Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: CupertinoColors.white),
                padding: EdgeInsets.all(6),
                child: Column(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                cakeList[index]['image'],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        cakeList[index]['Vname'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cakeList[index]['offprice'],
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough),
                          ),
                          horizontalSpace(20),
                          Text(
                            cakeList[index]['price'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        cakeList[index]['off'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.greenAccent),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < cakeList[index]['star']; i++)
                            Icon(
                              Icons.star,
                              color: Colors.greenAccent,
                            )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        cakeList[index]['delivary'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
