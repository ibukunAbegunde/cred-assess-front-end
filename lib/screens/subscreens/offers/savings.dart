import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/card/creditcard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class savingsScreen extends StatefulWidget {
  const savingsScreen({super.key});

  @override
  State<savingsScreen> createState() => _savingsScreenState();
}

class _savingsScreenState extends State<savingsScreen> {
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
                        child: Text("Savings",textAlign: TextAlign.center,
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
                        'Build your savings with ease & discipline',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Merriweather Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Explore the best Deals for Every Step of Your Journey',
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
                  padding: const EdgeInsets.symmetric(vertical: 30.0,),
                  child: Image.asset(
                    'images/savings.png',
                    // height: 300,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        tilesComponent(icon:'images/bag.png', title: 'Piggyvest', subtitle: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, ', Ontap:(){},),
                        tilesComponent(icon:'images/bag.png', title: 'Cowrywise', subtitle: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit,', Ontap:(){},),
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
