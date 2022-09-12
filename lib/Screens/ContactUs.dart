import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

openwhatsapp() async {
  var whatsapp = "+919307942816";
  var whatsappURl_android = "whatsapp://send?phone=" + whatsapp + "&text=hello";

  if (await canLaunch(whatsappURl_android)) {
    await launch(whatsappURl_android);
  } else {
    print("whatsapp no installed");
  }
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage('https://www.anandgroupindia.com/wp-content/uploads/2019/05/contactus.jpg')
                  )
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 40),
                child: Row(
                  children: [
                    Icon(Icons.whatsapp_outlined,color: Colors.green,),
                    MaterialButton(
                      onPressed: () {
                      openwhatsapp();
                      },
                      child: Text("Whats app"),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 20),
                child: Row(
                  children: [
                    Icon(Icons.call,color: Colors.green,),
                    MaterialButton(
                      onPressed: () {
                      launch('tel:+919307942816');
                                   },
                      child: Text("Make A Call"),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 40),
                child: Row(
                  children: [
                    Icon(Icons.mail,color: Colors.red,),
                    MaterialButton(
                      onPressed: () {
                        launch('mailto:tejnikam27@gmail@gmail.com?'
                            'subject=This is Subject '
                            'Title&body=This is Body of Email');
                      },
                      child: Text("Email us"),

                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
