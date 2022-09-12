import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({Key? key}) : super(key: key);

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}
class _TermsAndConditionsState extends State<TermsAndConditions> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebView(initialUrl: 'https://jkcakedesigns.com.au/terms-and-conditions/',
    javascriptMode: JavascriptMode.unrestricted ));
  }
}
