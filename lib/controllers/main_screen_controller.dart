import 'package:flutter/material.dart';

class MainScreenController with ChangeNotifier {
  String _selectedMenuItemTitle = 'início';

  String get getSelectecMenuItemTitle => _selectedMenuItemTitle;

  set setSelectedMenuItemTitle(String title) {
    _selectedMenuItemTitle = title;
    notifyListeners();
  }

  final _scrollController = ScrollController();
  ScrollController get getScrollController => _scrollController;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get getScaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState?.openEndDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }

  // Sections keys
  final GlobalKey _startKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();
  final GlobalKey _locationKey = GlobalKey();

  GlobalKey get getStartKey => _startKey;
  GlobalKey get getContactKey => _contactKey;
  GlobalKey get getLocationKey => _locationKey;

  void scrollToSection(GlobalKey sectionKey) async {
    BuildContext currentContext = sectionKey.currentContext!;

    await Scrollable.ensureVisible(
      currentContext,
      duration: const Duration(milliseconds: 600),
      curve: Curves.decelerate,
    );
  }
}
