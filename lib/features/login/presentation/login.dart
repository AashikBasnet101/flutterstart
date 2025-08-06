import 'package:flutter/material.dart';
import 'package:flutter_app/core/utils/color_const.dart';
import 'package:flutter_app/core/utils/string_const.dart';
import 'package:flutter_app/features/dashboard/presentation/dashboard.dart';
import 'package:flutter_app/widgets/custom_dropdown.dart';
import 'package:flutter_app/widgets/custom_elevatedbutton.dart';
import 'package:flutter_app/widgets/custom_textformfield.dart';
import 'package:flutter_app/features/signup/presentation/signup.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscurePassword = true;
  bool isObscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(loginStr),
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
                    height: 300,
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: Image.asset(
                      "assets/images/login.gif",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 70),
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
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
                  child: CustomElevatedButton(
                    backgroundColor: secondaryColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
                    },

                    child: Text(loginStr),
                  ),
                ),
              ),

              SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.only(top: 30.0, right: 12, left: 12),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(child: Text("Don't have an Account?")),
                          Row(
                            children: [
                              Text(
                                "SIGN UP",
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
