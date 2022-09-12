import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_cake_shopping/Screens/HomeScreen.dart';

import '../Utils/Common Widget.dart';
import '../main.dart';
import 'RegistrationPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                    verticalSpace(50),
                    Column(
                      children: [
                        Center(
                          child: Text(
                            'WELCOME TO CAKEWORLD',
                            style: TextStyle(color: Colors.black,
                                fontFamily: 'Billabong',
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 70),
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
                                      'Login',
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
                                    verticalSpace(15),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 110),
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Forgot Password ?',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    verticalSpace(20),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    DashBoard()));
                                      },
                                      color: Colors.orangeAccent,
                                      child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
                                      height: 40,
                                      minWidth: 150,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    verticalSpace(16),
                                    MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (BuildContext context) =>
                                                    Registration()));
                                      },
                                      color: Colors.orangeAccent,
                                      child: Text('SignUp',style: TextStyle(fontWeight: FontWeight.bold),),
                                      height: 40,
                                      minWidth: 150,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(20)),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Registration()));
                          },
                          child: Text(
                            'Don\'t have an account? Sign up',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    )
                  ],
                ))));
  }
}
