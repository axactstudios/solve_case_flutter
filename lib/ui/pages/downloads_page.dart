import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:solvecaseflutter/bloc/navigation_bloc/navigation_bloc.dart';

class DownloadsPage extends StatefulWidget with NavigationStates {
  final Function onMenuTap;
  const DownloadsPage({Key key, this.onMenuTap}) : super(key: key);
  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
    'France',
    'Georgia',
    'Germany',
    'Greece',
    'Hungary',
    'Iceland',
    'Ireland',
    'Italy',
    'Kazakhstan',
    'Kosovo',
    'Latvia',
    'Liechtenstein',
    'Lithuania',
    'Luxembourg',
    'Macedonia',
    'Malta',
    'Moldova',
    'Monaco',
    'Montenegro',
    'Netherlands',
    'Norway',
    'Poland',
    'Portugal',
    'Romania',
    'Russia',
    'San Marino',
    'Serbia',
    'Slovakia',
    'Slovenia',
    'Spain',
    'Sweden',
    'Switzerland',
    'Turkey',
    'Ukraine',
    'United Kingdom',
    'Vatican City'
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double cardHeight = height * 0.6;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white30,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: ClampingScrollPhysics(),
        child: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 48),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        child: Icon(Icons.menu, color: Colors.black),
                        onTap: widget.onMenuTap,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: Column(
                          children: <Widget>[
                            Text("Download",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                            Text("Solutions",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: height * 0.050, bottom: height * 0.075),
                  height: cardHeight,
                  child: PageView(
                    controller: PageController(viewportFraction: 0.8),
                    scrollDirection: Axis.horizontal,
                    pageSnapping: true,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('object tapped');
                          });
                        },
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                ),

//                                  double width : double.infinity ,

                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        'First Year',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 30),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        'Select Branch',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //TODO
                              Expanded(
                                child: ListView.builder(
                                  itemCount: europeanCountries.length,
                                  itemBuilder: (context, index) {
                                    return ListTile(
                                      title: Text(europeanCountries[index]),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          setState(() {
                            print('object tapped');
                          });
                        },
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0)),
                                ),
                                color: Colors.teal,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 28.0,
                                      left: 10.0,
                                      right: 10.0,
                                      top: 28.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Text(
                                        'Select Subject',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            print('object tapped');
                          });
                        },
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30.0),
                                      topRight: Radius.circular(30.0)),
                                ),
                                color: Colors.pink,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.pink,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(30)),
                                    ),
//                                  double width : double.infinity ,

                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 20.0,
                                          left: 10.0,
                                          right: 10.0,
                                          top: 18.0),
                                      child: Text(
                                        'Downloads Available',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
//              ListView.separated(
//                shrinkWrap: true,
//                itemBuilder: (context, index) {
//                  return ListTile(
//                    title: Text("Macbook"),
//                    subtitle: Text("Apple"),
//                    trailing: Text("-2900"),
//                  );
//                },
//                separatorBuilder: (context, index) {
//                  return Divider(height: 16);
//                },
//                itemCount: 10,
//              ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
