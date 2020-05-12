import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email, password;
  bool saveAttempt = false;
  final formKey = GlobalKey<FormState>();

  void _signIn(String email, String pw) {
    _auth
        .signInWithEmailAndPassword(email: email, password: pw)
        .then((authResult) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Container(
          color: Colors.yellow,
          child: Text('Welcome ${authResult.user.email}'),
        );
      }));
    }).catchError(
      (err) {
        print(err);
        if (err.code == 'ERROR_USER_NOT_FOUND') {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text(
                      'This email is not yet registered. Create an account.'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });
        }
        if (err.code == 'ERROR_WRONG_PASSWORD') {
          showCupertinoDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text(
                      'Password is incorrect. Please enter correct password.'),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      child: Text('OK'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                );
              });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
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
            TextFormField(
              onChanged: (textValue) {
                setState(() {
                  email = textValue;
                });
              },
              autovalidate: saveAttempt,
              validator: (emailValue) {
                if (emailValue.isEmpty) {
                  return 'This field cannot be blank';
                }
                RegExp regExp = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                if (regExp.hasMatch(emailValue)) {
                  return null;
                }

                return 'Please enter a valid email';
              },
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                hintText: 'Enter Email',
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                ),
              ),
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              onChanged: (textValue) {
                setState(() {
                  password = textValue;
                });
              },
              autovalidate: saveAttempt,
              validator: (pwValue) =>
                  pwValue.isEmpty ? 'This field cannot be blank' : null,
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
            InkWell(
              onTap: () {
                setState(() {
                  saveAttempt = true;
                });
                if (formKey.currentState.validate()) {
                  formKey.currentState.save();
                  _signIn(email, password);
                }
              },
              child: Container(
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
      ),
    );
  }
}
