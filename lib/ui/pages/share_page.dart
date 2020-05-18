import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solvecaseflutter/bloc/navigation_bloc/navigation_bloc.dart';

class SharePage extends StatelessWidget with NavigationStates {
  final Function onMenuTap;

  const SharePage({Key key, this.onMenuTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 234, 98, 98),
      ),
      padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                child: Icon(Icons.menu, color: Colors.white),
                onTap: onMenuTap,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("Invite",
                      style: TextStyle(
                          fontSize: 48,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text("Friends",
                        style: TextStyle(
                            fontSize: 48,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/target.png',
            scale: 2.4,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Each User Counts!!!",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Your constant support motivates us to give our best and provide you with fun and useful updates.",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                child: Card(
                  elevation: 5.0,
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 90.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Card(
                  elevation: 5.0,
                  color: Color.fromARGB(255, 250, 235, 158),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 30),
                    child: Icon(
                      FontAwesomeIcons.sms,
                      size: 90.0,
                      color: Color.fromARGB(255, 233, 139, 38),
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
