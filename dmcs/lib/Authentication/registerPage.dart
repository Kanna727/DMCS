import 'package:flutter/material.dart';
import 'Loginpage.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  final logo = new Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/ecash-money.jpg'),
    ),
  );
  final RollNo = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
        hintText: 'Roll No',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final ddNumber = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: 'Mess DD Number',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final registerButton = Padding(
    padding: EdgeInsets.symmetric(vertical: 32.0),
    child: Material(
      borderRadius: BorderRadius.circular(30.0),
      shadowColor: Colors.lightBlueAccent.shade100,
      elevation: 5.0,
      child: MaterialButton(
        minWidth: 200.0,
        height: 42.0,
        onPressed: () {},
        color: Colors.lightBlueAccent,
        child: Text('Register', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(
              height: 48.0,
            ),
            RollNo,
            SizedBox(
              height: 18.0,
            ),
            ddNumber,
            SizedBox(
              height: 18.0,
            ),
            registerButton,
            SizedBox(
              height: 3.0,
            ),
            FlatButton(
              child: Text('Already have an account?',
                  style: TextStyle(color: Colors.black54)),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
