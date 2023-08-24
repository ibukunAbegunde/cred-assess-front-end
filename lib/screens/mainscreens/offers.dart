import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/card/creditcard.dart';
import 'package:cred_assess/screens/subscreens/offers/loan.dart';
import 'package:cred_assess/screens/subscreens/offers/mortage.dart';
import 'package:cred_assess/screens/subscreens/offers/savings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class offerScreen extends StatefulWidget {
  const offerScreen({super.key});

  @override
  State<offerScreen> createState() => _offerScreenState();
}

class _offerScreenState extends State<offerScreen> {
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
                  child: Text("Offers",textAlign: TextAlign.center,
                    style: GoogleFonts.merriweather(textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w700,
                      height: 1.60,
                    ),),),
                ),
                Divider(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        tilesComponent(icon:'images/credit.png', title: 'Credit cards', subtitle: 'Credit card offers for you', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> creditPage()));},),
                        tilesComponent(icon:'images/bag.png', title: 'Loans', subtitle: 'Short and long term loans available to you', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> loanScreen()));},),
                        tilesComponent(icon:'images/car.png', title: 'Car Finance', subtitle: 'Pay for your car in installments', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> creditPage()));},),
                        tilesComponent(icon:'images/piggy.png', title: 'Savings', subtitle: 'Find savings suitable to help grow your money', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> savingsScreen()));},),
                        tilesComponent(icon:'images/insure.png', title: 'Insurance', subtitle: 'Find great deals on health, life and car insurance', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> creditPage()));},),
                        tilesComponent(icon:'images/mort.png', title: 'Mortgages', subtitle: 'Find mortgages from leading lenders', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> mortScreen()));},),
                        tilesComponent(icon:'images/bulb.png', title: 'Electricity', subtitle: 'Compare different electricity deals', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> creditPage()));},),
                        tilesComponent(icon:'images/debt.png', title: 'Debt Consolidation', subtitle: 'Reduce your debts and save money', Ontap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> creditPage()));},),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('CreditAccess functions as a credit broker, not a lender. If you decide to obtain a product, we receive a commission. However, our independence ensures that we never prioritize offers based on our earnings.', style: TextStyle(
                            color: Color(0xFF9E9E9E),
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Learn More',style: TextStyle(
                                color:  Color(0xFFC19961), fontSize: 15)),
                                Icon(Icons.info_outline_rounded,color:  Color(0xFFC19961))
                              ],
                            ),
                          ),
                        )
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
