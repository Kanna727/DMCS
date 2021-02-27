import 'package:flutter/material.dart';
import 'registerPage.dart';
import 'package:dmcs/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final logo = new Hero(
    tag: 'hero',
    child: CircleAvatar(
      backgroundColor: Colors.transparent,
      radius: 48.0,
      child: Image.asset('images/ecash-money.jpg'),
    ),
  );
  final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final passWord = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
    obscureText: true,
    decoration: InputDecoration(
        hintText: 'password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );
  final loginButton = Padding(
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
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
  final forgetLabel = FlatButton(
    child: Text('Forget Password', style: TextStyle(color: Colors.black54)),
    onPressed: () {},
  );

  void onpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

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
            email,
            SizedBox(
              height: 18.0,
            ),
            passWord,
            SizedBox(
              height: 18.0,
            ),
            loginButton,
            SizedBox(
              height: 3.0,
            ),
            forgetLabel,
            FlatButton(
              child: Text('Register', style: TextStyle(color: Colors.black54)),
              onPressed: onpressed,
            ),
            FlatButton(
              child: Text("skip Login", style: TextStyle(color: Colors.black54)),
              onPressed: (){
                 Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
