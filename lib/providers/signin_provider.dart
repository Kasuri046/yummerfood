import 'package:flutter/material.dart';

class KeyboardVisibilityProvider extends ChangeNotifier {
  bool _isKeyboardVisible = false;

  bool get isKeyboardVisible => _isKeyboardVisible;

  void toggleKeyboardVisibility() {
    _isKeyboardVisible = !_isKeyboardVisible;
    notifyListeners();
  }

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus(); // Hides the keyboard
    _isKeyboardVisible = false;
    notifyListeners();
  }

  void showKeyboard(BuildContext context, FocusNode focusNode) {
    if (!_isKeyboardVisible) {
      FocusScope.of(context).requestFocus(focusNode); // Opens the keyboard
      _isKeyboardVisible = true;
      notifyListeners();
    }
  }
}
