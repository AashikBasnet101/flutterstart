import 'package:flutter/material.dart';
import 'package:flutter_app/core/utils/color_const.dart';
import 'package:flutter_app/core/utils/string_const.dart';
import 'package:flutter_app/features/login/presentation/login.dart';
import 'package:flutter_app/widgets/custom_dropdown.dart';
import 'package:flutter_app/widgets/custom_elevatedbutton.dart';
import 'package:flutter_app/widgets/custom_textformfield.dart';

class Signup extends StatefulWidget {
  Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(signupStr),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    right: 8,
                    left: 8,
                    bottom: 12,
                  ),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Image.asset(
                      "assets/images/register.gif",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 65,
                child: CustomTextform(
                  labelText: firstnameStr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return firstnameValidationStr;
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 65,
                child: CustomTextform(
                  labelText: lastnameStr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return lastnameValidationStr;
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 65,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: DropDown(
                    labelText: genderStr,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return genderValidatorStr;
                      }
                      return null;
                    },
                    onChanged: (value) {},
                    items: genderList,
                  ),
                ),
              ),

              SizedBox(
                height: 65,
                child: CustomTextform(
                  prefixIcon: emailIcon,
                  labelText: emailStr,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return emailValidationStr;
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 65,
                child: CustomTextform(
                  labelText: passwordStr,
                  prefixIcon: lockIcon,
                  suffixIcon: visibilityIconButton(isObscurePassword, () {
                    setState(() {
                      isObscurePassword = !isObscurePassword;
                    });
                  }),
                  obscureText: isObscurePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return passwordValidationStr;
                    }
                    return null;
                  },
                ),
              ),

              SizedBox(
                height: 65,
                child: CustomTextform(
                  labelText: confirmpasswordStr,
                  prefixIcon: lockIcon,
                  suffixIcon: visibilityIconButton(
                    isObscureConfirmPassword,
                    () {
                      setState(() {
                        isObscureConfirmPassword = !isObscureConfirmPassword;
                      });
                    },
                  ),
                  obscureText: isObscureConfirmPassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return confirmpasswordValidationStr;
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 55,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  child: CustomElevatedButton(
                    backgroundColor: secondaryColor,
                    onPressed: () {},
                    child: Text(signupStr),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 12, left: 12),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(child: Text("Already have an account")),
                          Row(
                            children: [
                              Text(
                                "Login",
                                style: TextStyle(
                                  color: const Color(0xFF2163b1),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFF2163b1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
