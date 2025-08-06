import 'package:flutter/material.dart';
import 'package:flutter_app/features/dashboard/presentation/dashboard.dart';
import 'package:flutter_app/features/login/presentation/login.dart';
import 'package:flutter_app/features/signup/presentation/signup.dart';
import 'package:flutter_app/features/splash_screen/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen(),
    );
  }
}
