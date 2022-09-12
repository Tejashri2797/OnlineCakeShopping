import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FireBaseRealtime {
  static DatabaseReference dbRef = FirebaseDatabase.instance.ref(
      'UserInformation');

  static insertValue(BuildContext context,
      {
        String name = '',
        String email = '',
        String pass = '',
        String phoneNumber = ''
      }) {
    String key = dbRef
        .push()
        .key!;
    dbRef.child(key).set({'UserName': name,
      'Email': email,
      'password': pass,
      'PhoneNumber': phoneNumber}).then((value) =>
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Data inserted successfully'))

        ));
  }


}