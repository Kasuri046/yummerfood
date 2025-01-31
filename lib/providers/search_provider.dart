import 'package:flutter/cupertino.dart';
import '../models/search/search_model.dart';

class SearchpageProvider with ChangeNotifier {

  int selectedIndex = 0;

  void selectIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  List get filteredRestaurants {
    if (selectedIndex == 0) {
      return allRestaurants;
    } else if (selectedIndex == 1) {
      return burgerRestaurants;
    } else if (selectedIndex == 2) {
      return saladRestaurants;
    } else if (selectedIndex == 3) {
      return pizzaRestaurants;
    } else if (selectedIndex == 4) {
      return pastaRestaurants;
    } else if (selectedIndex == 5) {
      return popcornRestaurants;
    } else if (selectedIndex == 6) {
      return drinksRestaurants;
    } else if (selectedIndex == 7) {
      return juiceRestaurants;
    } else if (selectedIndex == 8) {
      return teaRestaurants;
    }
    return []; // Default return for any unhandled index.
  }

}
