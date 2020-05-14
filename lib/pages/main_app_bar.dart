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
            'Download Solutions',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
                color: Colors.black87),
            textAlign: TextAlign.right,
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          bottom: bottom,
        );
}
