import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/mortage/mortageone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class insureScreen extends StatefulWidget {
  const insureScreen({super.key});

  @override
  State<insureScreen> createState() => _insureScreenState();
}

class _insureScreenState extends State<insureScreen> {
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
                        child: Text("Insurance",textAlign: TextAlign.center,
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
                        'Get a great Insurance deal that could save you thousands',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Merriweather Sans',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Explore Insurance Deals for Every Step of Your Journey',
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
                    'images/injury.png',width: 250,
                    // height: 300,
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        tilesComponent(icon:'images/mort.png', title: 'Health Insurance', subtitle: 'Your health is your greatest wealth. Protect it with comprehensive health insurance.', Ontap:(){Navigation.push(mortageOne(), context);},),
                        tilesComponent(icon:'images/mort.png', title: 'Car Insurance', subtitle: 'Protect your ride, protect your journey. Car insurance that goes the extra mile.', Ontap:(){},),
                        tilesComponent(icon:'images/mort.png', title: 'Life Insurance', subtitle: 'protect what matters most with life insurance.', Ontap:(){},),
                        tilesComponent(icon:'images/mort.png', title: 'House Insurance', subtitle: 'protect what matters most with life insurance.', Ontap:(){},),
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
