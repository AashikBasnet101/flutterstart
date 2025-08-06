import 'package:flutter/material.dart';
import 'package:flutter_app/features/homepage/presentation/home.dart';
import 'package:flutter_app/features/profile/presentation/profile.dart';
import 'package:flutter_app/features/settings/presentation/settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Widget> widgetList = [HomePage(), Profile(), Settings()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetList[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,

        selectedItemColor: const Color.fromARGB(255, 36, 122, 192),
        unselectedItemColor: Colors.black,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
