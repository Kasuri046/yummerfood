import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class OrderListProvider extends ChangeNotifier{
//
//   bool _isSecondContainerVisible = true;
//   bool get isSecondContainerVisible => _isSecondContainerVisible;
//
//   void toggleVisibility() {
//       _isSecondContainerVisible = !_isSecondContainerVisible;
//       notifyListeners();
//   }
// }

class OrderListProvider extends ChangeNotifier {
  final Map<int, bool> _containerVisibility = {};

  OrderListProvider(int itemCount) {
    for (int i = 0; i < itemCount; i++) {
      _containerVisibility[i] = false;
    }
  }

  bool getVisibility(int index) => _containerVisibility[index] ?? false;

  void toggleVisibility(int index) {
    print('Toggling visibility for index: $index');
    _containerVisibility[index] = !(_containerVisibility[index] ?? false);
    notifyListeners();
  }
}
