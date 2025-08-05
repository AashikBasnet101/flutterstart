import 'package:flutter/material.dart';

String appName = "Test";
String passwordStr = "Password";
String confirmpasswordStr = "Confirm Password";
String emailStr = "Email";
String signupStr = "Sign Up";
String loginStr = "Login";
String emailValidationStr = "Email is required";
String firstnameStr = "First Name";
String lastnameStr = "Last Name";
String firstnameValidationStr = "First Name is required";
String lastnameValidationStr = "Last Name is required";
String passwordValidationStr = "Password is required";
String confirmpasswordValidationStr = "Password is required";
String genderValidatorStr = " choose a gender";
List<String> genderList = ["male", "Female", "others"];
String genderStr = "Gender";
Icon emailIcon = Icon(Icons.email);
Icon lockIcon = Icon(Icons.lock);

IconButton visibilityIconButton(bool isObscure, VoidCallback onTap) {
  return IconButton(
    icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
    onPressed: onTap,
  );
}
