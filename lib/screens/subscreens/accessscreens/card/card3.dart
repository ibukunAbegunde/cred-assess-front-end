import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/card/carddetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class cardScreen extends StatefulWidget {
  const cardScreen({super.key});

  @override
  State<cardScreen> createState() => _cardScreenState();
}

class _cardScreenState extends State<cardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Color(0xFFC7AD46),
                                ),
                                Text(
                                  'Offers',
                                  style: TextStyle(
                                    color: Color(0xFFC7AD46),
                                    fontSize: 16,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w400,
                                    height: 1.60,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 48.0),
                            child: Text(
                              "Loans",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.merriweather(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontFamily: 'Merriweather',
                                  fontWeight: FontWeight.w700,
                                  height: 1.60,
                                ),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 48.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.tune_rounded,
                                  color: Color(0xFFC7AD46),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text(
                                    'Filter',
                                    style: TextStyle(
                                      color: Color(0xFFC7AD46),
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
                    ),
                    const Divider(),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'N 500,000 minimum credit',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF757575),
                                  fontSize: 14,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w400,
                                  height: 1.60,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 48.0),
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
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Purchase cards',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 1.60,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 48.0),
                                      child: Icon(
                                        Icons.info_outline_rounded,
                                        color: Color(0xFF377E88),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFDFF0E9),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'images/arcticons.png', width: 25,
                                                // height: 300,
                                              ),
                                              Text(
                                                'Easy application',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF219D67),
                                                  fontSize: 12,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Access bank 6 Month Complete Credit Card',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Image.asset(
                                            'images/cardholder.png', width: 100,
                                            // height: 300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '0% interest on purchases for 6 months',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Pre- approved',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '34.9% Guaranteed APR',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(backgroundColor: CustomColors.darkpurple,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(200.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                                              child: Text('Apply Now', style: TextStyle(color: Colors.white),),
                                            ),
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              Navigation.push(CurvedContainer(typi:'cardholder'),
                                                context,
                                              );
                                            },
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              side: BorderSide(
                                                color: CustomColors.darkpurple, // Add your desired color here
                                                width: 1,         // Adjust the border width as needed
                                              ),
                                            ),
                                            child: Text('More Details', style: TextStyle(color: CustomColors.darkpurple),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Balance transfer cards',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w600,
                                        height: 1.60,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 48.0),
                                      child: Icon(
                                        Icons.info_outline_rounded,
                                        color: Color(0xFF377E88),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 3),
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFDFF0E9),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(5)),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                'images/arcticons.png', width: 25,
                                                // height: 300,
                                              ),
                                              Text(
                                                'Easy application',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF219D67),
                                                  fontSize: 12,
                                                  fontFamily: 'Avenir',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            '6 Month Complete Carbon Credit Card',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontFamily: 'Inter',
                                              fontWeight: FontWeight.w700,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 8.0,
                                          ),
                                          child: Image.asset(
                                            'images/CardMask.png', width: 100,
                                            // height: 300,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '0% interest on purchases for 6 months',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Pre- approved',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.check_circle_outline_rounded,
                                          color: Color(0xFF4CAF50),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            '34.9% Guaranteed APR',
                                            style: TextStyle(
                                              color: Color(0xFF66666A),
                                              fontSize: 14,
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              height: 1.60,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(backgroundColor: CustomColors.darkpurple,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(200.0),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                                              child: Text('Apply Now', style: TextStyle(color: Colors.white),),
                                            ),
                                          ),
                                          OutlinedButton(
                                            onPressed: () {
                                              Navigation.push(CurvedContainer(typi:'CardMask'),
                                                context,
                                              );
                                            },
                                            style: OutlinedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(20.0),
                                              ),
                                              side: BorderSide(
                                                color: CustomColors.darkpurple, // Add your desired color here
                                                width: 1,         // Adjust the border width as needed
                                              ),
                                            ),
                                            child: Text('More Details', style: TextStyle(color: CustomColors.darkpurple),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          )),
    );
  }
}
