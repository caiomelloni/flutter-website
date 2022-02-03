import 'package:flutter/cupertino.dart';

class MainScreenController with ChangeNotifier {
  String _selectedMenuItemTitle = 'início';

  get getSelectecMenuItemTitle => _selectedMenuItemTitle;

  set setSelectedMenuItemTitle(String title) {
    _selectedMenuItemTitle = title;
    notifyListeners();
  }
}
