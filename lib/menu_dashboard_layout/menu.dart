import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solvecaseflutter/bloc/navigation_bloc/navigation_bloc.dart';

class Menu extends StatelessWidget {
  final Animation<Offset> slideAnimation;
  final Animation<double> menuAnimation;
  final int selectedIndex;
  final Function onMenuItemClicked;

  const Menu(
      {Key key,
      this.slideAnimation,
      this.menuAnimation,
      this.selectedIndex,
      @required this.onMenuItemClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: ScaleTransition(
        scale: menuAnimation,
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.DownloadsClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Downloads",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 0
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.VideoLecturesClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Video Lectures",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 1
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.StudyMaterialClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Study Material",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 2
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.TopContributorsClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Top Contributors",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 3
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.ShareClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Share",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 4
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.ContactUsClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Contact Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 5
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<NavigationBloc>(context)
                        .add(NavigationEvents.DevelopedByClickedEvent);
                    onMenuItemClicked();
                  },
                  child: Text(
                    "Developed By",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: selectedIndex == 6
                          ? FontWeight.w900
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
