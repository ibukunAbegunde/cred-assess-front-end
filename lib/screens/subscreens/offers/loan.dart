import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/card/creditcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loanScreen extends StatefulWidget {
  const loanScreen({super.key});

  @override
  State<loanScreen> createState() => _loanScreenState();
}

class _loanScreenState extends State<loanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Row(children: [
                          Icon(Icons.arrow_back_ios),
                          Text('Offers')
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text("Loans",textAlign: TextAlign.center,
                          style: GoogleFonts.merriweather(textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w700,
                            height: 1.60,
                          ),),),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
                  child: Column(
                    children: [
                      Text(
                        'Get a great loan deal that could save you thousands ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Merriweather Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Compare loan rates from over 90 trusted lenders',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF757575),
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,),
                  child: Image.asset(
                    'images/loann.png',
                    // height: 300,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        tilesComponent(icon:'images/bag.png', title: 'Student Loan', subtitle: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, ', Ontap:(){},),
                        tilesComponent(icon:'images/bag.png', title: 'Car Loan', subtitle: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', Ontap:(){},),
                        tilesComponent(icon:'images/bag.png', title: 'Personal Loan', subtitle: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, ', Ontap:(){},),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}
