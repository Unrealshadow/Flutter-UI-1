import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutteruichallenge1/second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: SvgPicture.asset('images/first.svg'),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'MAKE YOUR OWN',
                        style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 2,
                          fontFamily: 'Raleway',
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Real estate \nnetwork',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Raleway',
                          color: Colors.black,
                        ),
                      ),
                      FlatButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 50, horizontal: 2),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'GET STARTED',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                color: Colors.black,
                              ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => SecondScreen(),
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
