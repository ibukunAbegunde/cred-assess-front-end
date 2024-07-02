import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/loan/loanedit3.dart';
import 'package:cred_assess/screens/subscreens/offers/mortage/carddetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class three extends StatefulWidget {
  const three({super.key});

  @override
  State<three> createState() => _threeState();
}

class _threeState extends State<three> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
leadingWidth: 100,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(children: [
            Icon(Icons.arrow_back_ios, color: Color(0xFFC7AD46)),
            Text(
              'Mortgages',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFC7AD46),
                fontSize: 16,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
              ),
            )
          ],),
        ),
        title: Text(
          "Mortgages",
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
                      loanComponentree(
                        icon: 'images/gta.png',
                        title: 'Guarantee Trust bank 3.99% fixed for 5 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'gta',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponentree(
                        icon: 'images/ubaa.png',
                        title: 'UBA 4.99% fixed for 5 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'ubaa',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponentree(
                        icon: 'images/moty.png',
                        title: 'FMBN 5.99% fixed for 13 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'moty',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponentree(
                        icon: 'images/fid.png',
                        title: 'Fidelity bank 3.99% fixed for 10 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'fid',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponentree(
                        icon: 'images/ubaa.png',
                        title: 'UBA 4.99% fixed for 5 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'ubaa',)));},
                      ),
                      Divider(
                        indent: 35,
                      ),
                      loanComponentree(
                        icon: 'images/moty.png',
                        title: 'FMBN 5.99% fixed for 13 years',
                        subtitle:
                        'N20,000,000 total amount to repay',
                        Ontap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> mortageCardDetails(typi: 'moty',)));},
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
