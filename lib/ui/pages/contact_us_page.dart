import 'package:flutter/material.dart';
import 'package:solvecaseflutter/bloc/navigation_bloc/navigation_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactUsPage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const ContactUsPage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget with NavigationStates {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          child: Icon(Icons.menu, color: Colors.black),
          onTap: ContactUsPage().onMenuTap,
        ),
        title: Text(
          "Request Help",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image(
            image: AssetImage('assets/hello.png'),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            "How can we help you?",
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
                "It looks like you are having some problems with the app or you want to request some material or videos. We are here to help so please get in touch with us",
                style: TextStyle(fontSize: 18.0),
                textAlign: TextAlign.center),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Card(
                    elevation: 20.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.whatsapp,
                            size: 40.0,
                            color: Colors.green,
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Chat with us",
                            style: TextStyle(fontSize: 18.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Card(
                    elevation: 20.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 39.0),
                      child: Column(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.mailBulk,
                            size: 40.0,
                            color: Color.fromARGB(255, 143, 23, 255),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Text(
                            "Email us",
                            style: TextStyle(fontSize: 18.0),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
