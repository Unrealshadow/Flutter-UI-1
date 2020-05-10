import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteruichallenge1/third_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment(-1.0, 0.5),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 60, fontFamily: 'Raleway'),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle: TextStyle(
                          fontFamily: 'Raleway',
                        ),
                        labelText: 'Email Address',
                        labelStyle: TextStyle(fontFamily: 'Raleway'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                          fontFamily: 'Raleway',
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(fontFamily: 'Raleway'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 40),
                      alignment: Alignment(-1.0, 1.0),
                      child: FloatingActionButton(
                        child: Icon(Icons.arrow_forward_ios),
                        backgroundColor: Colors.black,
                      ),
                    ),
                    Text(
                      'Already have an account?',
                      style:
                          TextStyle(fontFamily: 'Raleway', color: Colors.black),
                    ),
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            'LOGIN',
                            style: TextStyle(
                                fontFamily: 'Raleway', color: Colors.black),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 15,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ThirdScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      });
}
