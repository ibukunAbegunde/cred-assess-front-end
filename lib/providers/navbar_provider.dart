
import 'package:cred_assess/screens/home.dart';
import 'package:flutter/material.dart';

class NavbarProvider with ChangeNotifier{
  List<NavbarDTO> items = [
    NavbarDTO(label: 'Home',widget: HomeScreen(),iconData: Icons.home),
  ];
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    notifyListeners();
  }
}

class NavbarDTO{
  Widget? widget;
  String? label;
  IconData? iconData;

  NavbarDTO({this.widget, this.label, this.iconData});

}

