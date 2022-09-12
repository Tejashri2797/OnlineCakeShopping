import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Utils/Common Widget.dart';
import '../Utils/firebase_realtime_database.dart';
import 'LoginPage.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 60,
        backgroundColor: Colors.white,
        title: Text(
          'Welcome to CakeWorld.......',
          style: TextStyle(
              fontFamily: 'Billabong',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: Container(
                    height: 550,
                    width: 350,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Colors.greenAccent, Colors.white12],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                        // color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                              blurStyle: BlurStyle.outer),
                        ]),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          verticalSpace(50.0),
                          const Text(
                            'Registration',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          verticalSpace(50.0),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            child: Column(
                              children: [
                                TextFormField(
                                  controller: nameController,
                                  validator: (value) {
                                    return (value!.isEmpty)
                                        ? 'Please Enter Name'
                                        : null;
                                  },
                                  cursorColor: Colors.orange,
                                  decoration: const InputDecoration(
                                    hintText: 'Name',
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                    prefixIcon: Icon(
                                      Icons.person_outline_rounded,
                                      size: 30.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                verticalSpace(20.0),
                                TextFormField(
                                  controller: emailController,
                                  validator: (value) {
                                    bool emailRegx = RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(emailController.text);
                                    return (value!.isEmpty)
                                        ? 'Please Enter Email'
                                        : (!emailRegx)
                                            ? 'Please Enter Valid Email'
                                            : null;
                                  },
                                  cursorColor: Colors.orange,
                                  decoration: const InputDecoration(
                                    hintText: 'Email',
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                    prefixIcon: Icon(
                                      Icons.email_outlined,
                                      size: 30.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                verticalSpace(20.0),
                                TextFormField(
                                  controller: passwordController,
                                  validator: (value) {
                                    bool passwordRegx = RegExp(
                                            '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,}\$')
                                        .hasMatch(passwordController.text);
                                    return (value!.isEmpty)
                                        ? 'Please Enter password'
                                        : (!passwordRegx)
                                            ? 'Please Enter Valid Password'
                                            : null;
                                  },
                                  cursorColor: Colors.orange,
                                  decoration: const InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                    prefixIcon: Icon(
                                      Icons.vpn_key_outlined,
                                      size: 25.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                verticalSpace(20.0),
                                TextFormField(
                                  controller: phoneController,
                                  validator: (value) {
                                    bool phoneRegx =
                                        RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                                            .hasMatch(phoneController.text);
                                    return (value!.isEmpty)
                                        ? 'Please Enter phone Number'
                                        : (!phoneRegx)
                                            ? 'Please Enter Valid Number'
                                            : null;
                                  },
                                  cursorColor: Colors.orange,
                                  decoration: const InputDecoration(
                                    hintText: 'PhoneNumber',
                                    hintStyle: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                    prefixIcon: Icon(
                                      Icons.phone_android,
                                      size: 25.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                verticalSpace(30.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Checkbox(
                                      value: agree,
                                      onChanged: (value) {
                                        setState(() {
                                          agree = value!;
                                        });
                                      },
                                      activeColor: Colors.orange,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'I agree the ',
                                          style: TextStyle(fontSize: 16.0),
                                        ),
                                        Text(
                                          'Terms & Conditions',
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontSize: 16.0),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                verticalSpace(20.0),
                                Container(
                                  height: 35,
                                  width: 160,
                                  child: TextButton(
                                    style: ButtonStyle(
                                        elevation:
                                            MaterialStateProperty.all(5.0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.deepOrangeAccent),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20.0)))),
                                    onPressed: () {
                                      if(formKey.currentState!.validate()){
                                          FireBaseRealtime.insertValue(context,
                                              name: nameController.text,
                                              email: emailController.text,
                                              pass: passwordController.text,
                                              phoneNumber: phoneController.text);
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (BuildContext context)=>LoginPage()));
                                        };


                                      },



                                    child: const Text(
                                      'SIGN UP',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
