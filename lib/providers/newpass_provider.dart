import 'package:flutter/foundation.dart';

class NewPasswordModel with ChangeNotifier {
  String _newPassword = '';
  String _confirmPassword = '';
  bool _isNewPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  String get newPassword => _newPassword;
  String get confirmPassword => _confirmPassword;
  bool get isNewPasswordVisible => _isNewPasswordVisible;
  bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;

  void setNewPassword(String password) {
    _newPassword = password;
    notifyListeners();
  }

  void setConfirmPassword(String password) {
    _confirmPassword = password;
    notifyListeners();
  }

  void toggleNewPasswordVisibility() {
    _isNewPasswordVisible = !_isNewPasswordVisible;
    notifyListeners();
  }

  void toggleConfirmPasswordVisibility() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    notifyListeners();
  }
}
