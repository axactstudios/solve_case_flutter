import 'package:flutter/material.dart';

import 'menu_dashboard_layout/menu_dashborad_layout.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MenuDashboardLayout());
  }
}
