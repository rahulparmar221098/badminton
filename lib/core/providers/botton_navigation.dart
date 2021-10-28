import 'package:flutter/foundation.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 0;

  void updateIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
