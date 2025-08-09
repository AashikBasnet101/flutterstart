import 'package:flutter/material.dart';
import 'package:flutter_app/boarding_screen/presentation/calander.dart';
import 'package:flutter_app/features/signup/presentation/signup.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Calander()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // looks cleaner
      body: Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: Image.asset("assets/images/splash.gif"),
        ),
      ),
    );
  }
}
