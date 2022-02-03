import 'package:flutter/material.dart';

class MainScreenController with ChangeNotifier {
  String _selectedMenuItemTitle = 'início';

  String get getSelectecMenuItemTitle => _selectedMenuItemTitle;

  set setSelectedMenuItemTitle(String title) {
    _selectedMenuItemTitle = title;
    notifyListeners();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get getScaffoldKey => _scaffoldKey;

  void openOrCloseDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState?.openEndDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }
}
