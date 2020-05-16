import 'package:flutter/material.dart';
import 'package:solvecaseflutter/bloc/navigation_bloc/navigation_bloc.dart';

class DownloadsPage extends StatefulWidget with NavigationStates {
  final Function onMenuTap;
  const DownloadsPage({Key key, this.onMenuTap}) : super(key: key);
  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double cardHeight = height * 0.6;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Colors.white,
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
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      child: Icon(Icons.menu, color: Colors.black),
                      onTap: widget.onMenuTap,
                    ),
                    Text("Downloads",
                        style: TextStyle(fontSize: 24, color: Colors.black)),
                    Icon(Icons.settings, color: Colors.black),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: height * 0.1, bottom: height * 0.075),
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
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'First Year',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 30),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.blueAccent,
                      width: 100,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      color: Colors.greenAccent,
                      width: 100,
                    ),
                  ],
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
      ),
    );
  }
}
