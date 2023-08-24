import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/component/bottom_nav_bar.dart';
import 'package:cred_assess/screens/mainscreens/boost.dart';
import 'package:cred_assess/screens/mainscreens/home_screen.dart';
import 'package:cred_assess/screens/mainscreens/more.dart';
import 'package:cred_assess/screens/mainscreens/offers.dart';
import 'package:cred_assess/screens/mainscreens/report.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String id = 'MainScreen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  int _currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    reportScreen(),
    offerScreen(),
    boostScreen(),
    moreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50), bottom:Radius.circular(50) ),
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
                print(_currentIndex);
              },
              selectedItemColor: CustomColors.darkpurple, // Set the selected item color
              unselectedItemColor: Colors.grey,
              showSelectedLabels: true, // Always show selected labels
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon:Image.asset('images/home.png', width: 24, height: 24, color: _currentIndex == 0?CustomColors.darkpurple:Colors.grey,),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('images/note.png', width: 24, height: 24, color: _currentIndex == 1?CustomColors.darkpurple:Colors.grey,),
                  label: 'Reports',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('images/card.png', width: 24, height: 24, color: _currentIndex == 2?CustomColors.darkpurple:Colors.grey,),
                  label: 'Offers',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('images/boost.png', width: 24, height: 24, color: _currentIndex == 3?CustomColors.darkpurple:Colors.grey,),
                  label: 'Boost',
                ),
                BottomNavigationBarItem(
                  icon:Image.asset('images/more.png', width: 24, height: 24, color: _currentIndex == 4?CustomColors.darkpurple:Colors.grey,),
                  label: 'More',
                ),
              ],
            ),
          ),
        ),
      ),
      body: screens[_currentIndex],
    );
  }
}
