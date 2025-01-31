import 'package:flutter/material.dart';
import 'app_assets_colors.dart';

Widget buildTextField({
  required TextEditingController controller,
  required String labelText,
  required String hintText,
  bool isPassword = false,
  void Function(String)? onChanged, // Correctly define the onChanged parameter
}) {
  return TextField(
    controller: controller,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    obscureText: isPassword,
    onChanged: onChanged, // Use the onChanged callback
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black),
      labelStyle: TextStyle(color: AppColors.textColor),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textColor),
      ),
      suffixIcon: Icon(
        Icons.check,
        size: 20,
        color: controller.text.isNotEmpty ? Colors.green : Colors.black,
      ),
    ),
  );
}

Widget buildPasswordField({
  required TextEditingController controller,
  required String labelText,
  required String hintText,
  required bool isVisible,
  required VoidCallback toggleVisibility,
  void Function(String)? onChanged,
}) {
  return TextField(
    controller: controller,
    cursorColor: Colors.black,
    style: TextStyle(color: Colors.black),
    obscureText: !isVisible,
    onChanged: onChanged, // Use the onChanged callback
    decoration: InputDecoration(
      labelText: labelText,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.black),
      labelStyle: TextStyle(color: AppColors.textColor),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.textColor),
      ),
      suffixIcon: IconButton(
        icon: Icon(
          isVisible ? Icons.visibility : Icons.visibility_off,
          size: 20,
          color: Colors.black,
        ),
        onPressed: toggleVisibility,
      ),
    ),
  );
}
