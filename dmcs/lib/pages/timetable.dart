import 'package:flutter/material.dart';
import 'dart:ui';

class TimeTable extends StatefulWidget {
  @override
  _TimeTableState createState() => _TimeTableState();
}

class _TimeTableState extends State<TimeTable> {
  final List<FeaturedItem> _items = <FeaturedItem>[
    new FeaturedItem('Monday', 'Wednesday'),
    new FeaturedItem('Tuesday', 'Thursday'),
    new FeaturedItem('Wednesday', 'Friday'),
    new FeaturedItem('Thursday', 'Saturday'),
    new FeaturedItem('Friday', 'Sunday'),
    new FeaturedItem('Saturday', 'Monday'),
    new FeaturedItem('Sunday', 'Tuesday'),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xff101E5B),
        body: new CustomScrollView(
          slivers: <Widget>[
            new SliverPadding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 80.0),
              sliver: new SliverFixedExtentList(
                itemExtent: 100.0,
                delegate: new SliverChildBuilderDelegate(
                    (builder, index) => cards(_items[index], context),
                    childCount: _items.length),
              ),
            ),
          ],
        ));
  }
}

Widget cards(FeaturedItem itm, BuildContext context) {
  String team1 = itm.team1;
  String team2 = itm.team2;
  Color team1color = teamColor(team1);
  Color team2color = teamColor(team2);
  return InkWell(
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
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
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
                          team1,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: new BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height/4*3
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: new Column(
                            children: <Widget>[
                              new ExpansionTile(
                                //trailing: new Icon(Icons.dehaze),
                                title: new Text(
                                  'Breakfast',
                                  style: TextStyle(color: Colors.blue[900]),
                                ),
                                children: <Widget>[
                                  ListTile(title: new Text('Paratha')),
                                  ListTile(title: new Text('Tea')),
                                  ListTile(title: new Text('Eggs(Coupons)')),
                                  ListTile(
                                      title: new Text('Omelette(Coupons)')),
                                  ListTile(title: new Text('Milk(Coupons)')),
                                ],
                              ),
                              new ExpansionTile(
                                //trailing: new Icon(Icons.dehaze),
                                title: new Text(
                                  'Lunch',
                                  style: TextStyle(color: Colors.blue[900]),
                                ),
                                children: <Widget>[
                                  ListTile(title: new Text('Paratha')),
                                  ListTile(title: new Text('Tea')),
                                  ListTile(title: new Text('Eggs(Coupons)')),
                                  ListTile(
                                      title: new Text('Omelette(Coupons)')),
                                  ListTile(title: new Text('Milk(Coupons)')),
                                ],
                              ),
                              new ExpansionTile(
                                //trailing: new Icon(Icons.dehaze),
                                title: new Text(
                                  'Dinner',
                                  style: TextStyle(color: Colors.blue[900]),
                                ),
                                children: <Widget>[
                                  ListTile(title: new Text('Paratha')),
                                  ListTile(title: new Text('Tea')),
                                  ListTile(title: new Text('Eggs(Coupons)')),
                                  ListTile(
                                      title: new Text('Omelette(Coupons)')),
                                  ListTile(title: new Text('Milk(Coupons)')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          );
        },
      );
    },
    child: new Card(
      child: new SizedBox(
        height: 100.0,
        child: new Stack(
          children: <Widget>[
            new Positioned.fill(
                child: new DecoratedBox(
              decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [team1color, team2color])),
            )),
            new Center(
                child:
                    new Text(team1, style: new TextStyle(color: Colors.white)))
          ],
        ),
      ),
    ),
  );
}

Color teamColor(String teamname) {
  Color _teamcolor;
  if (teamname == 'Monday') {
    _teamcolor = const Color(0xff145786);
  } else if (teamname == 'Tuesday') {
    _teamcolor = const Color(0xff232323);
  } else if (teamname == 'Wednesday') {
    _teamcolor = const Color(0xffBD452D);
  } else if (teamname == 'Thursday') {
    _teamcolor = const Color(0xff533470);
  } else if (teamname == 'Friday') {
    _teamcolor = const Color(0xff283E74);
  } else if (teamname == 'Saturday') {
    _teamcolor = const Color(0xff893130);
  } else if (teamname == 'Sunday') {
    _teamcolor = const Color(0xff0C528D);
  }
  // else if (teamname == 'Monday') {
  //   _teamcolor = const Color(0xff145786);
  // }
  return _teamcolor;
}

class FeaturedItem {
  String team1;
  String team2;

  FeaturedItem(this.team1, this.team2);
}
