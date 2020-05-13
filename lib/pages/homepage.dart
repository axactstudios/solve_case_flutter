import 'package:flutter/material.dart';
import 'package:solvecaseflutter/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:solvecaseflutter/layout_type.dart';

import 'main_app_bar.dart';

//class Contact {
//  Contact({this.name, this.email});
//  final String name;
//  final String email;
//}
//class HomePage extends StatelessWidget with NavigationStates {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      color: Colors.white,
//      child: SafeArea(
//        child: Center(
//          child: Column(
//            children: <Widget>[
//              Text(
//                'Home Page',
//                style: TextStyle(
//                  //TODO: make home page
//                  fontWeight: FontWeight.w500,
//                  fontSize: 30,
//                ),
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}

class HomePage extends StatelessWidget
    with NavigationStates
    implements HasLayoutGroup {
  HomePage({Key key, this.layoutGroup, this.onLayoutToggle}) : super(key: key);
  final LayoutGroup layoutGroup;
  final VoidCallback onLayoutToggle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 30, 30),
      appBar: MainAppBar(
        layoutGroup: layoutGroup,
        layoutType: LayoutType.nested,
        onLayoutToggle: onLayoutToggle,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50, 10, 10),
        child: Container(
          child: _buildContent(),
        ),
      ),
    );
  }

  Widget _buildContent() {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext content, int index) {
          return _buildHorizontalList(parentIndex: index);
        });
  }

  Widget _buildHorizontalList({int parentIndex}) {
    var colors = [
      Colors.black87,
      Colors.black87,
      Colors.black87,
      Colors.black87,
      Colors.black87
    ];
    double height = 515.0;
    double width = 289.0;
    if (parentIndex == 0) {
      return SizedBox(
        height: height,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext content, int index) {
              return _buildItem(
                index: index + 1,
                color: colors[(parentIndex + index) % colors.length],
                parentHeight: height,
                parentWidth: width,
              );
            }),
      );
    } else if (parentIndex == 1) {
      return SizedBox(
        height: height,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext content, int index) {
              return _buildItem2(
                index: index + 1,
                color: colors[(parentIndex + index) % colors.length],
                parentHeight: height,
                parentWidth: width,
              );
            }),
      );
    } else {
//      return SizedBox(
//        height: height,
//        child: ListView.builder(
//            scrollDirection: Axis.horizontal,
//            itemCount: 5,
//            itemBuilder: (BuildContext content, int index) {
//              return _buildItem3(
//                index: index + 1,
//                color: colors[(parentIndex + index) % colors.length],
//                parentHeight: height,
//                parentWidth: width,
//              );
//            }),
//      );
    }
  }

  Widget _buildItem(
      {int index, Color color, double parentHeight, double parentWidth}) {
    double edgeSize = 18.0;
    double itemWidth = parentWidth - edgeSize * 2.0;
    double itemHeight = parentHeight - edgeSize * 2.0;
    var subject = "Maths";
    if (index == 1) {
      subject = "Maths";
    } else if (index == 2) {
      subject = "Physics";
    } else if (index == 3) {
      subject = "SDF";
    } else if (index == 4) {
      subject = "ES";
    } else if (index == 5) {
      subject = "Workshop";
    }
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.black54,
      child: Container(
        padding: EdgeInsets.all(edgeSize),
        child: SizedBox(
          width: itemWidth,
          height: itemHeight,
          child: Container(
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 89, 89, 1.0),
                    Color.fromRGBO(133, 113, 255, 1.0),
                  ],
                ),
                borderRadius: BorderRadius.circular(25.0)),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0))),
                  width: parentWidth,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                    child: Text(
                      'First Year',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 30.0, color: Colors.white),
                    ),
                  ),
                ),
//                SizedBox(
//                  height: 10.0,
//                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.0),
                          bottomRight: Radius.circular(25.0))),
                  width: parentWidth,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                    child: Text(
                      '$subject',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15.0, color: Colors.white),
                    ),
                  ),
                ),
//              Container(
//                child: _buildContactList(),
//              )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem2(
      {int index, Color color, double parentHeight, double parentWidth}) {
    double edgeSize = 18.0;
    double itemWidth = parentWidth - edgeSize * 2.0;
    double itemHeight = parentHeight - edgeSize * 2.0;

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.black54,
      child: Container(
        padding: EdgeInsets.all(edgeSize),
        child: SizedBox(
          width: itemWidth,
          height: itemHeight,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(255, 89, 89, 1.0),
                    Color.fromRGBO(133, 113, 255, 1.0),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0))),
            width: parentWidth,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                'Second Year',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30.0, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

//  Widget _buildItem3(
//      {int index, Color color, double parentHeight, double parentWidth}) {
//    double edgeSize = 18.0;
//    double itemWidth = parentWidth - edgeSize * 2.0;
//    double itemHeight = parentHeight - edgeSize * 2.0;
//
//    return Container(
//      padding: EdgeInsets.all(edgeSize),
//      child: SizedBox(
//        width: itemWidth,
//        height: itemHeight,
//        child: Container(
//          alignment: AlignmentDirectional.center,
//          color: color,
//          child: Text(
//            'Coming Soon',
//            style: TextStyle(fontSize: 72.0, color: Colors.white),
//          ),
//        ),
//      ),
//    );
//  }

//  Widget _buildContactList() {
//    return ListView.builder(
//        itemCount: allContacts.length,
//        itemBuilder: (BuildContext content, int index) {
//          Contact contact = allContacts[index];
//          return ContactListTile(contact);
//        });
//  }
}
//
//class ContactListTile extends ListTile {
//  ContactListTile(Contact contact)
//      : super(
//          title: Text(contact.name),
//          subtitle: Text(contact.email),
//          leading: CircleAvatar(child: Text(contact.name[0])),
//        );
//}
//
//List<Contact> allContacts = [
//  Contact(name: 'Isa Tusa', email: 'isa.tusa@me.com'),
//  Contact(name: 'Racquel Ricciardi', email: 'racquel.ricciardi@me.com'),
//  Contact(name: 'Teresita Mccubbin', email: 'teresita.mccubbin@me.com'),
//  Contact(name: 'Rhoda Hassinger', email: 'rhoda.hassinger@me.com'),
//  Contact(name: 'Carson Cupps', email: 'carson.cupps@me.com'),
//  Contact(name: 'Devora Nantz', email: 'devora.nantz@me.com'),
//  Contact(name: 'Tyisha Primus', email: 'tyisha.primus@me.com'),
//  Contact(name: 'Muriel Lewellyn', email: 'muriel.lewellyn@me.com'),
//  Contact(name: 'Hunter Giraud', email: 'hunter.giraud@me.com'),
//  Contact(name: 'Corina Whiddon', email: 'corina.whiddon@me.com'),
//  Contact(name: 'Meaghan Covarrubias', email: 'meaghan.covarrubias@me.com'),
//  Contact(name: 'Ulysses Severson', email: 'ulysses.severson@me.com'),
//  Contact(name: 'Richard Baxter', email: 'richard.baxter@me.com'),
//  Contact(name: 'Alessandra Kahn', email: 'alessandra.kahn@me.com'),
//  Contact(name: 'Libby Saari', email: 'libby.saari@me.com'),
//  Contact(name: 'Valeria Salvador', email: 'valeria.salvador@me.com'),
//  Contact(name: 'Fredrick Folkerts', email: 'fredrick.folkerts@me.com'),
//  Contact(name: 'Delmy Izzi', email: 'delmy.izzi@me.com'),
//  Contact(name: 'Leann Klock', email: 'leann.klock@me.com'),
//  Contact(name: 'Rhiannon Macfarlane', email: 'rhiannon.macfarlane@me.com'),
//];
