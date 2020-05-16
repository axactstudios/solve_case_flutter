import 'package:bloc/bloc.dart';
import 'package:solvecaseflutter/ui/pages/contact_us_page.dart';
import 'package:solvecaseflutter/ui/pages/developed_by_page.dart';
import 'package:solvecaseflutter/ui/pages/share_page.dart';
import 'package:solvecaseflutter/ui/pages/top_contributors_page.dart';
import 'package:solvecaseflutter/ui/pages/video_lectures_page.dart';
import 'package:solvecaseflutter/ui/pages/downloads_page.dart';
import 'package:solvecaseflutter/ui/pages/study_material_page.dart';

enum NavigationEvents {
  DownloadsClickedEvent,
  VideoLecturesClickedEvent,
  StudyMaterialClickedEvent,
  TopContributorsClickedEvent,
  ShareClickedEvent,
  ContactUsClickedEvent,
  DevelopedByClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  final Function onMenuTap;

  NavigationBloc({this.onMenuTap});

  @override
  NavigationStates get initialState => DownloadsPage(
        onMenuTap: onMenuTap,
      );

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.DownloadsClickedEvent:
        yield DownloadsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.VideoLecturesClickedEvent:
        yield VideoLecturesPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.StudyMaterialClickedEvent:
        yield StudyMaterialPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.TopContributorsClickedEvent:
        yield TopContributorsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ShareClickedEvent:
        yield SharePage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.ContactUsClickedEvent:
        yield ContactUsPage(
          onMenuTap: onMenuTap,
        );
        break;
      case NavigationEvents.DevelopedByClickedEvent:
        yield DevelopedByPage(
          onMenuTap: onMenuTap,
        );
        break;
    }
  }
}
