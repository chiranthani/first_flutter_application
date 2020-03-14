import 'package:flutter/material.dart';
import 'package:hello_app/screens/login.dart';
import 'package:hello_app/screens/ratingPage.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FirstHomeApp(),
    );
  }
}

class FirstHomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/1.jpeg"), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text('Treva Shop'),
            centerTitle: true,
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(30.0, 70.0, 10.0, 10.0),
            child: ListView(
              padding: EdgeInsets.all(30.0),
              children: <Widget>[
                Text(
                  'Get the best products in treva shop',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                Material(
                  elevation: 5.0,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: OutlineButton(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    disabledBorderColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: () {
                      navigateToSignUpPage(context);
                    },
                    borderSide: BorderSide(color: Colors.white),
                    child: Text("SignUp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
                SizedBox(
                    height: 40.0,
                    child: Center(
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
                Material(
                  elevation: 5.0,
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                  child: OutlineButton(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.white),
                    disabledBorderColor: Colors.white,
                    onPressed: () {
                      navigateToLoginPage(context);
                    },
                    child: Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void navigateToSignUpPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RatingPage()));
  }

  void navigateToLoginPage(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
