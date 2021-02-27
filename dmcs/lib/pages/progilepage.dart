import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xff363636),
      body: new Stack(
        children: <Widget>[
          ClipPath(
            child:Container(
              color: Color(0xff00897B),
              ),
              clipper: getClipper(),
              ),
             Positioned(
               width: 420.0,
               top: MediaQuery.of(context).size.height/5,
               child: Column(
                 children: <Widget>[
                   Container(
                     width: 150.0,
                     height: 150.0,
                     decoration: BoxDecoration(
                       color: Colors.red,
                       image: DecorationImage(
                         image: NetworkImage('https://picsum.photos/250?image=9'),
                         fit: BoxFit.cover
                       ),
                       borderRadius: BorderRadius.all(Radius.circular(75.0)),
                       boxShadow: [
                         BoxShadow(blurRadius: 7.0,color: Colors.black)
                       ]
                     ),
                   ),
                   SizedBox(height: 19.0,),
                   Container(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Full Name:',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             new InkWell(
                               onTap: (){},
                               child: Text('Savudam Sai Koushik',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             )
                           ],
                         ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Roll No:',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             new InkWell(
                               onTap: (){},
                               child: Text('1506079',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             )
                           ],
                         ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Mobile No:',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             new InkWell(
                               onTap: (){},
                               child: Text('9133447740',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             )
                           ],
                         ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: <Widget>[
                             Text('Room No:',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             new InkWell(
                               onTap: (){},
                               child: Text('204',
                             style:TextStyle(
                               color: Colors.white,
                               fontSize: 18.0,
                               fontStyle: FontStyle.normal,
                               fontWeight: FontWeight.w400 
                             )
                             ),
                             )
                           ],
                         ),
                        ),

                       ],
                     ),
                   ) 
                 ],
               ),
             )
        ],
      
      ),

    );
  } 
}
class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size){
    var path= new Path();
    path.lineTo(0.0, size.height/2.6);
    path.lineTo(size.width+200.0,0.0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path>oldClipper){
    return true;

  }

}
