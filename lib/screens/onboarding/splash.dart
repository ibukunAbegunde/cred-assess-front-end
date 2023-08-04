import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/onboarding/onboard.dart';
import 'package:flutter/material.dart';
import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/icon.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
          () => Navigation.replaceAll(Onboarding(),
        context,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon(
              icon: 'Logo',
              height: 50,
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
