import 'package:flutter/widgets.dart';
import '../models/search/search_model.dart';

class HomepageProvider extends ChangeNotifier {

  int _selectedIndex = 0; // 0 for Restaurants, 1 for Food
  int get selectedIndex => _selectedIndex;

  void selectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  List get homeRestaurants {
    if (selectedIndex == 0) {
      return burgerRestaurants;
    } else if (selectedIndex == 1) {
      return saladRestaurants;
    } else if (selectedIndex == 2) {
      return pizzaRestaurants;
    } else if (selectedIndex == 3) {
      return pastaRestaurants;
    } else if (selectedIndex == 4) {
      return popcornRestaurants;
    } else if (selectedIndex == 5) {
      return drinksRestaurants;
    } else if (selectedIndex == 6) {
      return juiceRestaurants;
    } else if (selectedIndex == 7) {
      return teaRestaurants;
    }
    return []; // Default return for any unhandled index.
  }

}