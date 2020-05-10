import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: SvgPicture.asset('images/second.svg'),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        'Successfully created account',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'You did it!',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                          fontSize: 50,
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'CONTINUE',
                              style: TextStyle(
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
