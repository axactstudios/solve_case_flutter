import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'SIGN IN',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.white,
                fontSize: 24.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Enter Name',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 34.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 89, 89, 1.0),
                    Color.fromRGBO(133, 113, 255, 1.0),
                  ],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              'LOG IN',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 89, 89, 1.0),
                    Color.fromRGBO(133, 113, 255, 1.0),
                  ],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Icon(
              FontAwesomeIcons.google,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'FORGOT PASSWORD?',
            style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 34.0),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 89, 89, 1.0),
                    Color.fromRGBO(133, 113, 255, 1.0),
                  ],
                ),
                borderRadius: BorderRadius.circular(30.0)),
            child: Text(
              'Don\'t have an account?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
