import 'package:flutter/material.dart';
import 'package:dmcs/pages/homepage1.dart';
import 'package:dmcs/pages/progilepage.dart';
import 'package:dmcs/pages/timetable.dart';
import 'coolBottomBar.dart';
import 'dart:ui';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 1;

  List colors = [Colors.deepPurple, Colors.pink, Colors.cyan];
  List appBarText = [Text('Mess Time Table'), Text('Home'), Text('Profile')];

  Widget callPage(int selected) {
    switch (selected) {
      case 1:
        return HomePage1();
      case 0:
        return TimeTable();
      case 2:
        return ProfilePage();

        break;
      default:
        return HomePage1();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(children: <Widget>[
      new Scaffold(
        // appBar: AppBar(
        //   title: appBarText[selected],
        //   backgroundColor: colors[selected],
        // ),
        body: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          child: callPage(selected),
        ),
        // bottomNavigationBar: CoolBottomBar(
        //   items: <CoolBarItem>[
        //     CoolBarItem(
        //       icon: Icon(Icons.home),
        //       activeColor: Colors.deepPurple[700],
        //       backgroundColor: Colors.deepPurple[100],
        //       title: "Home",
        //     ),
        //     CoolBarItem(
        //       icon: Icon(Icons.date_range),
        //       activeColor: Colors.pink[700],
        //       backgroundColor: Colors.pink[100],
        //       title: "Mess Time Table",
        //     ),
        //     CoolBarItem(
        //       icon: Icon(Icons.person),
        //       activeColor: Colors.cyan[700],
        //       backgroundColor: Colors.cyan[100],
        //       title: "Profile",
        //     )
        //   ],
        //   selectedIndex: selected,
        //   itemClicked: (int index) {
        //     setState(() {
        //       selected = index;
        //     });
        //   },
        // ),
      ),
      new Container(
        height: 100.0,
        child: new AppBar(
          flexibleSpace: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: new BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.1)
                  ),
              )),
          title: appBarText[selected],
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
      ),
      Positioned(
        bottom: 0.0,
        right: 0.0,
        left: 0.0,
        child: BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            decoration: new BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.2)
                  ),
            child: CoolBottomBar(
              items: <CoolBarItem>[
                CoolBarItem(
                  icon: Icon(Icons.date_range),
                  activeColor: Colors.pink[700],
                  backgroundColor: Colors.pink[100],
                  title: "Mess Time Table",
                ),
                CoolBarItem(
                  icon: Icon(Icons.home),
                  activeColor: Colors.deepPurple[700],
                  backgroundColor: Colors.deepPurple[100],
                  title: "Home",
                ),
                
                CoolBarItem(
                  icon: Icon(Icons.person),
                  activeColor: Colors.cyan[700],
                  backgroundColor: Colors.cyan[100],
                  title: "Profile",
                )
              ],
              selectedIndex: selected,
              itemClicked: (int index) {
                setState(() {
                  selected = index;
                });
              },
            ),
          ),
        ),
      ),
    ]);
  }
// int _currentIndex=0;

// Widget callPage(int currentIndex){
//   switch (currentIndex) {
//     case 1: return ProfilePage();
//     case 2: return TimeTable();
//     case 0: return HomePage1();

//       break;
//     default:HomePage1();
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           onTap: (value){
//             _currentIndex=value;
//             setState(() {

//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon:Icon(Icons.home),
//               title: Text('Home')
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.access_alarm),
//               title: Text('Schedule')
//             ),
//             BottomNavigationBarItem(
//               title: Text('Profile'),
//               icon: Icon(Icons.account_balance)
//              )
//           ],
//         ),
//       ),

//     );
//   }
}
