import 'package:flutter/material.dart';
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
                ? Icons.filter_1
                : Icons.filter_2),
            onPressed: onLayoutToggle,
          ),
          title: Text(
            'Download solutions',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 24,
            ),
          ),
          elevation: 1.0,
          bottom: bottom,
        );
}
