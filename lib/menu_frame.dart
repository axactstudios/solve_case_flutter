import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_signin_widget.dart';
import 'create_login.dart';
import 'sign_in.dart';

class MenuFrame extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'solve-case',
      home: Material(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 100.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'solve-case',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 34.0),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.key,
                        color: Colors.white,
                        size: 25.0,
                      ),
                      Text('   Login to continue',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 24.0)),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Expanded(
                    child: PageView(
                      controller: pageController,
                      children: <Widget>[
                        HomeSigninWidget(goToSignIn: () {
                          pageController.animateToPage(1,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        }, goToSignUp: () {
                          pageController.animateToPage(2,
                              duration: Duration(milliseconds: 200),
                              curve: Curves.easeIn);
                        }),
                        SignIn(),
                        CreateLogin(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 30, 30, 30),
          ),
        ),
      ),
    );
  }
}
//gradient: LinearGradient(
//begin: Alignment.topCenter,
//end: Alignment.bottomCenter,
//colors: [
//Color.fromRGBO(255, 89, 89, 1.0),
//Color.fromRGBO(133, 113, 255, 1.0),
//],
