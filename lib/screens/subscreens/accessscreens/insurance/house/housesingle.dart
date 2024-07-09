import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insuranceProfile.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class insuranceHealthSingle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar:CAppBar(
          showArrowColor: true,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          leadingInPressed: () => Get.back(),
          title: Padding(
            padding: const EdgeInsets.only(left: TSizes.defaultSpace*2),
            child: Text(
              'Profiles',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(
                color: TColors.white,
                fontFamily: GoogleFonts.merriweather().fontFamily,
              ),
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ],
        ),
        body: Column(
          children: [
            // First part: 30% of the screen height
            Container(
              decoration: const BoxDecoration(
                color: TColors.primary,
              ),
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
                child: Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Expanded(
                          child: Row(
                            children: [
                              Text(
                                'Single Plan',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                  color: TColors.white,
                                  fontSize: 22,
                                  fontFamily: GoogleFonts.merriweather()
                                      .fontFamily,
                                ),),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(TSizes.defaultSpace),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kindly confirm the validity of your bio-data at our disposal',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                          fontSize: 13,
                          fontFamily: GoogleFonts.merriweather().fontFamily,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Full name:",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: 'Ibukun Abegunde',
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Date of birth",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: '25-07-1980',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Address",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: '28, Abraham close, Eti-osa, Lagos, Nigeria',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "NIN",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: '123456789',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Gender",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: 'Male',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Marital Status",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: 'Single',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Height",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: '176cm',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Weight",
                                      style:CustomColors.formfieldtitle,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            TextFormField(
                              cursorColor: CustomColors.primaryBlue,
                              style:TextStyle(
                                  color: Colors.white, fontFamily: 'SFUIDisplay'),
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: height * 0.015, horizontal: width * 0.03),
                                filled: true,
                                fillColor: TColors.white,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide(color: TColors.softGrey, width: 1)),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(
                                    color: CustomColors.primaryBlue,
                                  ),
                                ),
                                labelText: '76Kg',
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12,
                                ),
                              ),
                              // onSaved: (String? val) {
                              //   email = val!;
                              // },
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: TColors.light,
              backgroundColor: TColors.primary,
              disabledForegroundColor: TColors.darkGrey,
              disabledBackgroundColor: TColors.buttonDisabled,
              side: const BorderSide(color: TColors.primary),
              padding:
              const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
              textStyle: const TextStyle(
                fontSize: 16,
                color: TColors.textWhite,
                fontWeight: FontWeight.w600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            onPressed: () {
              print("Button pressed");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => insuranceProfileCards(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Continue'),
              ],
            ),
          ),
        ),

      ),
    );
  }
}


