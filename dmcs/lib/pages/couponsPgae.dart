import 'package:flutter/material.dart';

class CouponsPage extends StatefulWidget {
  @override
  _CouponsPageState createState() => _CouponsPageState();
}

class _CouponsPageState extends State<CouponsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff101E5B),
      appBar: new AppBar(
        title: new Text('Coupons Page'),
      ),
      body: new Center(child: new Text('data'),),
    );
  }
}