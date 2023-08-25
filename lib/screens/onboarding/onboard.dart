
import 'package:cred_assess/assets/buttons/button.dart';
import 'package:cred_assess/assets/logo.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/onbording.dart';
import 'package:cred_assess/screens/authentication/login.dart';
import 'package:cred_assess/screens/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../assets/colors.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 24,
              ),
              Logo(
                height: 17,
              ),
              SizedBox(
                height: 49,
              ),
              Expanded(
                child: Onbording(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 21,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            child: Text(
                              "Sign up",
                              style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
                                height: 1,
                                letterSpacing: 0.36,)),textAlign: TextAlign.center,
                            ),
                              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(CustomColors.darkpurple,)),
                            onPressed: () async {
                              Navigation.push(SigninPage(),
                                context,
                              );
                            }
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: <Widget>[
                      InkWell(
                          child: Text('Already have an account? Log in',
                            style: TextStyle(color:Colors.black),
                          ),
                          onTap: () {
                            Navigation.push(LoginPage(),
                                context);
                          }
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
              SizedBox(
                height: 55,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
