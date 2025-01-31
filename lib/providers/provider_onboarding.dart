import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';

class OnboardingModelProvider extends ChangeNotifier {

  int _pageIndex = 0;
  int get pageIndex => _pageIndex;

  void setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  void callbackFunction(int index, CarouselPageChangedReason reason) {
    setPageIndex(index);
    notifyListeners();
  }
}


