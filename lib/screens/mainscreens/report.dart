import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/screens/subscreens/report/creditReport.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reportScreen extends StatefulWidget {
  const reportScreen({super.key});

  @override
  State<reportScreen> createState() => _reportScreenState();
}

class _reportScreenState extends State<reportScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFAFAFA),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Text(
                  "Reports",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.merriweather(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Merriweather',
                      fontWeight: FontWeight.w700,
                      height: 1.60,
                    ),
                  ),
                ),
              ),
              Divider(color:  Color(0xFFF5F5F5),),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> creditReportScreen()));
                          },
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.50,
                                        strokeAlign: BorderSide.strokeAlignCenter,
                                        color: Color(0xFFEFEFF4),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          "Credit Report",
                                          style: GoogleFonts.merriweather(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'Merriweather',
                                              fontWeight: FontWeight.w700,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 15.0),
                                              child: Text('Since Joining'),
                                            ),
                                            ListTile(
                                              visualDensity: VisualDensity(
                                                  horizontal: 0, vertical: -4),
                                              title: Text(
                                                  'Your score has gone up by 71pts'),
                                              leading: Icon(
                                                Icons.arrow_circle_up_rounded,
                                                color: CustomColors.darkpurple,
                                                size: 30,
                                              ),
                                              horizontalTitleGap: 0,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 15.0),
                                              child: Text('Things to check out'),
                                            ),
                                            ListTile(
                                              visualDensity: VisualDensity(
                                                  horizontal: 0, vertical: -4),
                                              title: Text(
                                                  'Factors affecting your credit card negatively'),
                                              leading: Icon(
                                                Icons.arrow_circle_down_rounded,
                                                color: CustomColors.red,
                                                size: 30,
                                              ),
                                              horizontalTitleGap: 0,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 18.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 0.50,
                                        strokeAlign:
                                            BorderSide.strokeAlignCenter,
                                        color: Color(0xFFEFEFF4),
                                      ),
                                    ),
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        title: Text(
                                          "Affordability Report",
                                          style: GoogleFonts.merriweather(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'Merriweather',
                                              fontWeight: FontWeight.w700,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                        subtitle: Text(
                                            '2 Bank accounts linked to this account'),
                                        trailing: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 15,
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Zenith Bank'),
                                        subtitle: Text('*****2345'),
                                        leading: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/zenith.png',
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text('Wema Bank'),
                                        subtitle: Text('*****2345'),
                                        leading: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'images/wema.png',
                                              width: 40,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 0.50,
                                      strokeAlign: BorderSide.strokeAlignCenter,
                                      color: Color(0xFFEFEFF4),
                                    ),
                                  ),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    ListTile(
                                      title: Text(
                                        "Stability  Report",
                                        style: GoogleFonts.merriweather(
                                          textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: 'Merriweather',
                                            fontWeight: FontWeight.w700,
                                            height: 1.60,
                                          ),
                                        ),
                                      ),
                                      trailing: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 15,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15),
                                      child: Text(
                                        'Lenders need to know and be able to confirm your residential address and employment status when deciding whether to lend you money',
                                        style: TextStyle(
                                          color: Color(0xFF9E9E9E),
                                          fontSize: 14,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w400,
                                          height: 1.60,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Learn More',style: TextStyle(
                                                color:  CustomColors.darkpurple, fontSize: 15)),
                                            Icon(Icons.info_outline_rounded,color:  CustomColors.darkpurple,)
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
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
