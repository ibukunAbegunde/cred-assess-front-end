import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class carScreen extends StatefulWidget {
  const carScreen({super.key});

  @override
  State<carScreen> createState() => _carScreenState();
}

class _carScreenState extends State<carScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CAppBar(
          showArrowColor: true,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          leadingInPressed: () => Get.back(),
          title: Center(
            child: Text(
              'Car Finance',
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
            SizedBox(width:80, child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
          ],
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,),
                child: Image.asset(
                  'images/Cary.png',width: 250,
                  // height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                child: Text(
                  'Getting a car loan has never been this easy, Click the button below to get it done like it never happened ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 1.60,
                  ),
                ),
              ),
              _submitButton(),
            ],
          ),
        )
    );
  }

  ///-----------------------------------
  ///login buton
  ///---------------------------------
  Widget _submitButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: TColors.primary,
          borderRadius: BorderRadius.all(Radius.circular(8))),

      child: Expanded(
        child: TextButton(

            child: _buildChild(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(TColors.primary,)),
            onPressed: () async {
              // Navigation.push(three(),
              //   context,
              // );
            }
        ),
      ),
    );
  }

  ///-----------------------------------
  ///login circularprogress indicator widget
  ///---------------------------------
  Widget _buildChild() {

    ///check for on press then start turning and wait till customers information response is gotten from api

    return Text(
        "Proceed",
        style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 0.36,)),textAlign: TextAlign.center
    );
  }
}
