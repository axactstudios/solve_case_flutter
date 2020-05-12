import 'package:bloc/bloc.dart';
import 'package:solvecaseflutter/pages/contactuspage.dart';
import 'package:solvecaseflutter/pages/contributorspage.dart';
import 'package:solvecaseflutter/pages/developedbypage.dart';
import '../pages/lecturespage.dart';
import '../pages/smpage.dart';

import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  LecturesClickedEvent,
  StudyMaterialClickedEvent,
  TopContributorsClickedEvent,
  ContactUsClickedEvent,
  DevelopedByClickedEvent
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.LecturesClickedEvent:
        yield LecturesPage();
        break;
      case NavigationEvents.StudyMaterialClickedEvent:
        yield StudyMaterialPage();
        break;
      case NavigationEvents.TopContributorsClickedEvent:
        yield ContributorsPage();
        break;
      case NavigationEvents.ContactUsClickedEvent:
        yield ContactUsPage();
        break;
      case NavigationEvents.DevelopedByClickedEvent:
        yield DevelopedByPage();
        break;
    }
  }
}
