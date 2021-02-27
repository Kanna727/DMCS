import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        new Scaffold(
          backgroundColor: Color(0xff101E5B),
          body: Center(
              child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(48.0),
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0)),
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        child: new BackdropFilter(
                          filter:
                              new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: new Container(
                              // width: 100.0,
                              // height: 300.0,
                              decoration: new BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey.shade100.withOpacity(0.4)),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: new Text(
                                      'Coupons History',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  ConstrainedBox(
                                    constraints: new BoxConstraints(
                                        maxHeight:
                                            MediaQuery.of(context).size.height /
                                                4 *
                                                3),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: new Column(
                                        children: <Widget>[
                                          new ListTile(
                                            title: new Text('Coupon 1'),
                                            trailing: new Text('25/06/2018'),
                                          ),
                                          new ListTile(
                                            title: new Text('Coupon 2'),
                                            trailing: new Text('25/07/2018'),
                                          ),
                                          new ListTile(
                                            title: new Text('Coupon 3'),
                                            trailing: new Text('25/08/2018'),
                                          ),
                                          new ListTile(
                                            title: new Text('Coupon 4'),
                                            trailing: new Text('25/09/2018'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  new FlatButton(
                                    onPressed: () {},
                                    child: new Center(
                                      child: new Text('Renew Coupon'),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(5, 10, 5, 5),
                  height: MediaQuery.of(context).size.height / 6,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: new Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Coupon Number: 1',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      Text(
                        'Coupon Issued Date: 13/07/2019',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                      //new Padding(padding: EdgeInsets.all(10.0),),
                      new LinearPercentIndicator(
                        animation: true,
                        animationDuration: 2000,
                        width: MediaQuery.of(context).size.width * 0.76,
                        lineHeight: 12.0,
                        percent: 0.5,
                        center: Text(
                          "₹250",
                          //style: new TextStyle(fontSize: 12.0),
                          style: TextStyle(
                              color: Colors.deepPurple, fontSize: 12.0),
                        ),
                        leading: new Text(
                          '₹0',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        trailing: new Text(
                          '₹500',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.grey,
                        progressColor: Colors.blueAccent,
                      ),
                    ],
                  ),
                ),
              ),
              // new Container(
              //   margin: EdgeInsets.fromLTRB(10, 10, 10, 5),
              //   height: MediaQuery.of(context).size.height / 4,
              //   decoration: BoxDecoration(
              //     color: Colors.deepPurple,
              //     border: Border.all(),
              //     borderRadius: BorderRadius.all(Radius.circular(8.0)),
              //   ),
              // ),
              new Expanded(
                child: new Column(
                  children: <Widget>[
                    Container(
                      child: new TabBar(
                          indicatorColor: Colors.deepPurple[100],
                          labelColor: Colors.deepPurple[100],
                          controller: controller,
                          tabs: [
                            new Tab(text: 'Breakfast'),
                            new Tab(text: 'Non-Veg'),
                            new Tab(
                              text: 'Veg',
                            ),
                            new Tab(
                              text: 'Sweets',
                            )
                          ]),
                    ),
                    new Expanded(
                      child: new TabBarView(
                        controller: controller,
                        children: [
                          //     new Tab(child: new Text('data')),
                          //     new Tab(child: new Text('data')),
                          Icon(Icons.directions_car),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                          Icon(Icons.dehaze)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
          // floatingActionButton: new FloatingActionButton(
          //   backgroundColor: Colors.purple,
          //   onPressed: () {},
          //   child: new Image.asset(
          //     'images/qr-code.png',
          //     height: 35,
          //   ),
          // )
        ),
        Positioned(
          bottom: 100.0,
          right: 20.0,
          child: new FloatingActionButton(
            backgroundColor: Colors.deepPurple[100],
            onPressed: () {},
            child: new Image.asset(
              'images/qr-code.png',
              height: 35,
            ),
          ),
        )
      ],
    );
  }
}
