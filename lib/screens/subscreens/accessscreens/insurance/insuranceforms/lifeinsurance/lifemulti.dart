import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insuranceProfile.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class insuranceHealthMulti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        appBar: CAppBar(
          showArrowColor: true,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          leadingInPressed: () => Get.back(),
          title: Padding(
            padding: const EdgeInsets.only(left: TSizes.defaultSpace * 2),
            child: Text(
              'Profiles',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
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
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Multi Plan',
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleMedium!
                                            .copyWith(
                                              color: TColors.white,
                                              fontSize: 22,
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily,
                                            ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        'How many people:',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                              fontSize: 13,
                                              color: TColors.white,
                                              fontFamily:
                                                  GoogleFonts.merriweather()
                                                      .fontFamily,
                                            ),
                                      ),
                                      SizedBox(
                                        width: TSizes.lg,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal:
                                                TSizes.defaultSpace / 2),
                                        decoration: BoxDecoration(
                                            color: TColors.softGrey,
                                            border: Border.all(
                                                color: TColors.grey, width: 1),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(TSizes.md))),
                                        child: Directionality(
                                          textDirection: TextDirection.ltr,
                                          child: DropdownButtonHideUnderline(
                                            child: DropdownButton<String>(
                                              hint: Text(
                                                'USD',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleLarge!
                                                    .copyWith(
                                                      fontSize: 12,
                                                      fontFamily: GoogleFonts
                                                              .merriweather()
                                                          .fontFamily,
                                                    ),
                                              ),
                                              style: const TextStyle(
                                                  color: Colors.black),
                                              items: <String>[
                                                '12',
                                                '24',
                                                '36',
                                                '48',
                                                '60',
                                                '72'
                                              ].map((String value) {
                                                return DropdownMenuItem(
                                                  value: value,
                                                  // Use value here
                                                  child: Row(
                                                    children: [
                                                      Text(value,
                                                          style:
                                                              const TextStyle(
                                                                  color: Colors
                                                                      .black)),
                                                      const Icon(
                                                        Icons
                                                            .keyboard_arrow_right_rounded,
                                                        color: Colors.black,
                                                      )
                                                    ],
                                                  ), // Use value here as well
                                                );
                                              }).toList(),
                                              icon: const Icon(
                                                Icons.keyboard_arrow_down,
                                                color: Colors.black,
                                              ),
                                              onChanged: (value) {
                                                print(value);
                                                // Add your logic to update the dropdownValue here
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Second person",
                                  style: CustomColors.formfieldtitle,
                                ),

                                Row(
                                  children: [
                                    SizedBox(
                                      width: TSizes.md,
                                    ),
                                    Text(
                                      "02",
                                      style: CustomColors.formfieldtitle,
                                    ),
                                    SizedBox(
                                      width: TSizes.xs,
                                    ),
                                    Container(
                                      height: 4,
                                      width: 100,
                                      padding:
                                          const EdgeInsets.all(TSizes.defaultSpace),
                                      decoration: BoxDecoration(
                                        color: TColors.primary,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(TSizes.md))
                                      ),
                                    ),
                                    SizedBox(
                                      width: TSizes.xs,
                                    ),
                                    Text(
                                      "02",
                                      style: CustomColors.formfieldtitle,
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: TSizes.xs,
                        ),
                        Container(
                          padding: const EdgeInsets.all(TSizes.defaultSpace),
                          decoration: BoxDecoration(
                            color: TColors.white,
                            border: Border.all(color: TColors.grey, width: 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fill in details for person 2',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 13,
                                      fontFamily:
                                          GoogleFonts.merriweather().fontFamily,
                                    ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "First name:",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "Middle Name:",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                            color: CustomColors.primaryBlue,
                                          ),
                                        ),
                                        labelText: 'Middle Name:',
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "Last Name:",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                            color: CustomColors.primaryBlue,
                                          ),
                                        ),
                                        labelText: 'Last Name',
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "Date of birth",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "Address",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                          borderSide: BorderSide(
                                            color: CustomColors.primaryBlue,
                                          ),
                                        ),
                                        labelText:
                                            '28, Abraham close, Eti-osa, Lagos, Nigeria',
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "NIN",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
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
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Expanded(
                                            child: Text(
                                              "Gender",
                                              style:
                                                  CustomColors.formfieldtitle,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    TextFormField(
                                      cursorColor: CustomColors.primaryBlue,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'SFUIDisplay'),
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            vertical: height * 0.015,
                                            horizontal: width * 0.03),
                                        filled: true,
                                        fillColor: TColors.white,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            borderSide: BorderSide(
                                                color: TColors.softGrey,
                                                width: 1)),
                                        focusedBorder: const OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
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
                            ],
                          ),
                        ),
                      ],
                    )),
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
