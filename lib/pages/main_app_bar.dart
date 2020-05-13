import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:solvecaseflutter/layout_type.dart';

class MainAppBar extends AppBar {
  MainAppBar({
    LayoutGroup layoutGroup,
    LayoutType layoutType,
    PreferredSize bottom,
    VoidCallback onLayoutToggle,
  }) : super(
          leading: IconButton(
            icon: Icon(layoutGroup == LayoutGroup.nonScrollable
                ? FontAwesomeIcons.fastForward
                : FontAwesomeIcons.fastBackward),
            onPressed: onLayoutToggle,
          ),
          title: Text(
            'Download solutions',
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 24, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 30, 30, 30),
          elevation: 1.0,
          bottom: bottom,
        );
}
