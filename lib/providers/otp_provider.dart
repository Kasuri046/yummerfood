import 'package:flutter/material.dart';

class OtpProvider with ChangeNotifier {
  List<TextEditingController> _controllers = List.generate(5, (index) => TextEditingController());

  List<TextEditingController> get controllers => _controllers;

  void disposeControllers() {
    for (var controller in _controllers) {
      controller.dispose();
    }
  }

  void handleInputChange(BuildContext context, int index, String value) {
    if (value.length == 1 && index < 4) {
      FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).previousFocus();
    }
    notifyListeners();
  }
}
