// //Extra
// //Sign In Page
// import 'package:flutter/material.dart';
//
// class KeyboardVisibilityProvider extends ChangeNotifier {  //SignIn Page //Page 5
//   bool _isKeyboardVisible = false;
//
//   bool get isKeyboardVisible => _isKeyboardVisible;
//
//   void toggleKeyboardVisibility() {
//     _isKeyboardVisible = !_isKeyboardVisible;
//     notifyListeners();
//   }
//
//   void hideKeyboard(BuildContext context) {
//     FocusScope.of(context).unfocus(); // Hides the keyboard
//     _isKeyboardVisible = false;
//     notifyListeners();
//   }
//
//   void showKeyboard(BuildContext context, FocusNode focusNode) {
//     if (!_isKeyboardVisible) {
//       FocusScope.of(context).requestFocus(focusNode); // Opens the keyboard
//       _isKeyboardVisible = true;
//       notifyListeners();
//     }
//   }
// }
//
//
// //SignUpPage
//
// class SignUpModel with ChangeNotifier {   //SignUp Page //Page 6
//   String name = '';
//   String email = '';
//   String password = '';
//   String confirmPassword = '';
//   bool isPasswordVisible = false;
//   bool isConfirmPasswordVisible = false;
//
//   void updateName(String newName) {
//     name = newName;
//     notifyListeners();
//   }
//
//   void updateEmail(String newEmail) {
//     email = newEmail;
//     notifyListeners();
//   }
//
//   void togglePasswordVisibility() {
//     isPasswordVisible = !isPasswordVisible;
//     notifyListeners();
//   }
//
//   void toggleConfirmPasswordVisibility() {
//     isConfirmPasswordVisible = !isConfirmPasswordVisible;
//     notifyListeners();
//   }
// }
//
//
// //New Pass Provider
// class NewPasswordModel with ChangeNotifier {  //New Password //Page 9
//   String _newPassword = '';
//   String _confirmPassword = '';
//   bool _isNewPasswordVisible = false;
//   bool _isConfirmPasswordVisible = false;
//
//   String get newPassword => _newPassword;
//   String get confirmPassword => _confirmPassword;
//   bool get isNewPasswordVisible => _isNewPasswordVisible;
//   bool get isConfirmPasswordVisible => _isConfirmPasswordVisible;
//
//   void setNewPassword(String password) {
//     _newPassword = password;
//     notifyListeners();
//   }
//
//   void setConfirmPassword(String password) {
//     _confirmPassword = password;
//     notifyListeners();
//   }
//
//   void toggleNewPasswordVisibility() {
//     _isNewPasswordVisible = !_isNewPasswordVisible;
//     notifyListeners();
//   }
//
//   void toggleConfirmPasswordVisibility() {
//     _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
//     notifyListeners();
//   }
// }
//
//
//
// class PhoneNumberProvider extends ChangeNotifier { //Verify Phone Number // Page 10
//   String _selectedCountryCode = '+17';
//   String _phoneNumber = '';
//
//   String get selectedCountryCode => _selectedCountryCode;
//   String get phoneNumber => _phoneNumber;
//
//   void setSelectedCountryCode(String newCode) {
//     _selectedCountryCode = newCode;
//     notifyListeners();
//   }
//
//   void setPhoneNumber(String newNumber) {
//     _phoneNumber = newNumber;
//     notifyListeners();
//   }
// }



// class OtpProvider with ChangeNotifier { // Confirmation Code Otp //Page 11
//
//   List<TextEditingController> _controllers = List.generate(5, (index) => TextEditingController());
//
//   List<TextEditingController> get controllers => _controllers;
//
//   void disposeControllers() {
//     for (var controller in _controllers) {
//       controller.dispose();
//     }
//   }
//
//   void handleInputChange(BuildContext context, int index, String value) {
//     if (value.length == 1 && index < 4) {
//       FocusScope.of(context).nextFocus();
//     } else if (value.isEmpty && index > 0) {
//       FocusScope.of(context).previousFocus();
//     }
//     notifyListeners();
//   }
// }


