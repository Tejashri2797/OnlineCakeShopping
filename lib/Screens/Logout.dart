import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/Common Widget.dart';
import '../main.dart';
import 'RegistrationPage.dart';

class Logout extends StatefulWidget {
  const Logout({Key? key}) : super(key: key);

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: Container(
                              height: 430,
                              width: 300,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                      colors: [Colors.greenAccent, Colors.white12],
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 3.0,
                                        spreadRadius: 1.0)
                                  ]),
                              child: Form(
                                child: Column(
                                  children: [
                                    verticalSpace(30),
                                    Text(
                                      'Logout',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25,
                                          color: Colors.black54),
                                    ),
                                    verticalSpace(20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TextFormField(
                                        controller: txtEmail,
                                        validator: (value) {},
                                        cursorColor: Colors.orange,
                                        decoration: const InputDecoration(
                                            prefixIcon: Icon(Icons.mail),
                                            hintText: 'Email'),
                                      ),
                                    ),
                                    verticalSpace(15),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: TextFormField(
                                        controller: txtPassword,
                                        cursorColor: Colors.deepOrange,
                                        decoration: InputDecoration(
                                            prefixIcon:
                                            Icon(Icons.key_outlined),
                                            hintText: 'Password'),
                                      ),
                                    ),


                                    verticalSpace(40),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    Registration()));
                                      },
                                      color: Colors.orangeAccent,
                                      child: Text('LogOut',style: TextStyle(fontWeight: FontWeight.bold),),
                                      height: 40,
                                      minWidth: 150,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                    ),
                                    verticalSpace(16),

                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),

                      ],
                    )
                  ],
                ))));
  }
}
