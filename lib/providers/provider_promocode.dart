import 'package:flutter/cupertino.dart';

class PromoCodeProvider extends ChangeNotifier {

  int _selectedIndex = 0; // 0 for Restaurants, 1 for Food
  int get selectedIndex => _selectedIndex;

  void selectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
