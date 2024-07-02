import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/loan/loanedit3.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loanEditTwo extends StatefulWidget {
  const loanEditTwo({super.key});

  @override
  State<loanEditTwo> createState() => _loanEditTwoState();
}

class _loanEditTwoState extends State<loanEditTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "Loans",
            textAlign: TextAlign.center,
            style: GoogleFonts.merriweather(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        actions: [
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: Color(0xFFC19961),
                    ),
                  ),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    'Showing results for N 20,000,000 over 20 years',
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 14,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit_outlined,
                        color: Color(0xFF377E88),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Edit',
                          style: TextStyle(
                            color: Color(0xFF377E88),
                            fontSize: 16,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 38.0),
                  child: Column(
                    children: <Widget>[
                      loanComponent(
                        icon: 'images/gta.png',
                        title: 'Guarantee Trust bank - N 1,000,000 a year',
                        subtitle:
                            'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'gta',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponent(
                        icon: 'images/ubaa.png',
                        title: 'UBA  - N 1,000,000 a year',
                        subtitle:
                            'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'ubaa',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponent(
                        icon: 'images/zee.png',
                        title: 'Zenith bank -  N 1,000,000 a year',
                        subtitle:
                            'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'zee',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponent(
                        icon: 'images/fid.png',
                        title: 'Fidelity  bank - N1,000,000 a year',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'fid',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponent(
                        icon: 'images/wee.png',
                        title: 'Wema bank-  N1,000,000 a year',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'wee',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponent(
                        icon: 'images/wee.png',
                        title: 'Guarantee Trust bank - N 1,000,000 a year',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> loanEditthree(typi: 'wee',)));},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
