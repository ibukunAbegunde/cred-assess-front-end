import 'package:cred_assess/screens/subscreens/credreport.dart';
import 'package:flutter/material.dart';

class moreScreen extends StatefulWidget {
  const moreScreen({super.key});

  @override
  State<moreScreen> createState() => _moreScreenState();
}

class _moreScreenState extends State<moreScreen> {
  @override
  Widget build(BuildContext context) {
    return CircleProgressBar(percentage: 0.7,);
  }
}
