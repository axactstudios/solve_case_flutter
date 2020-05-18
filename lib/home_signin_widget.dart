//import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
//class HomeSigninWidget extends StatelessWidget {
//  final Function goToSignUp;
//  final Function goToSignIn;
//
//  HomeSigninWidget({this.goToSignUp, this.goToSignIn});
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: <Widget>[
//        Container(
//          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//          decoration: BoxDecoration(
//              gradient: LinearGradient(
//                begin: Alignment.topCenter,
//                end: Alignment.bottomCenter,
//                colors: [
//                  Color.fromRGBO(255, 89, 89, 1.0),
//                  Color.fromRGBO(133, 113, 255, 1.0),
//                ],
//              ),
//              borderRadius: BorderRadius.circular(30.0)),
//          child: Row(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//              Icon(
//                FontAwesomeIcons.google,
//                color: Colors.white,
//                size: 25.0,
//              ),
//              Text(
//                ' | Sign In With Google',
//                style: TextStyle(
//                    fontSize: 18.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white),
//              ),
//            ],
//          ),
//        ),
//        SizedBox(
//          height: 20.0,
//        ),
//        InkWell(
//          onTap: () {
//            goToSignUp();
//          },
//          child: Container(
//            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
//            decoration: BoxDecoration(
//                gradient: LinearGradient(
//                  begin: Alignment.topCenter,
//                  end: Alignment.bottomCenter,
//                  colors: [
//                    Color.fromRGBO(255, 89, 89, 1.0),
//                    Color.fromRGBO(133, 113, 255, 1.0),
//                  ],
//                ),
//                borderRadius: BorderRadius.circular(30.0)),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//              children: <Widget>[
//                Text(
//                  ' Sign Up',
//                  style: TextStyle(
//                      fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                      color: Colors.white),
//                ),
//              ],
//            ),
//          ),
//        ),
//        SizedBox(
//          height: 50.0,
//        ),
//        InkWell(
//          onTap: () {
//            goToSignIn();
//          },
//          child: Text(
//            'ALREADY REGISTERED? SIGN IN!',
//            style: TextStyle(
//                color: Colors.white,
//                decoration: TextDecoration.underline,
//                fontWeight: FontWeight.bold,
//                fontSize: 15.0),
//          ),
//        )
//      ],
//    );
//  }
//}
