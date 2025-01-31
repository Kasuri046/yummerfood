import 'package:flutter/material.dart';

class PhoneNumberProvider extends ChangeNotifier {
  String _selectedCountryCode = '+17';
  String _phoneNumber = '';

  String get selectedCountryCode => _selectedCountryCode;
  String get phoneNumber => _phoneNumber;

  void setSelectedCountryCode(String newCode) {
    _selectedCountryCode = newCode;
    notifyListeners();
  }

  void setPhoneNumber(String newNumber) {
    _phoneNumber = newNumber;
    notifyListeners();
  }
}

