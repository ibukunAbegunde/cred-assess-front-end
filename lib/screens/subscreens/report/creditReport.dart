import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class creditReportScreen extends StatefulWidget {
  const creditReportScreen({super.key});

  @override
  State<creditReportScreen> createState() => _creditReportScreenState();
}

class _creditReportScreenState extends State<creditReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:  SafeArea(
          child: Padding(
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
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 48.0),
                        child: Text("Credit reports",textAlign: TextAlign.center,
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
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your credit score is ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                      TextSpan(
                        text: '5OO',
                        style: TextStyle(
                          color: Color(0xFF377E88),
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          height: 0.10,
                        ),
                      ),
                      TextSpan(
                        text: ' out of 999',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w400,
                          height: 0.10,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 332.38,
                  height: 115.38,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 92.44,
                              height: 92.44,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 3.39,
                                    top: 3.39,
                                    child: Opacity(
                                      opacity: 0.50,
                                      child: Container(
                                        width: 85.57,
                                        height: 85.57,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFD3E7FF),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 17.20,
                                    top: 34.40,
                                    child: SizedBox(
                                      width: 59.18,
                                      height: 32.88,
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '5OO\n',
                                              style: TextStyle(
                                                color: Color(0xFF3080DE),
                                                fontSize: 17.44,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w800,
                                                height: 0.06,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'of 999',
                                              style: TextStyle(
                                                color: Color(0xFF3080DE),
                                                fontSize: 13.15,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w800,
                                                height: 0.10,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5.73),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 95.17,
                                    height: 17.20,
                                    child: Text(
                                      'Avg credit score ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF3080DE),
                                        fontSize: 13.76,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w800,
                                        height: 0,
                                        letterSpacing: -0.60,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 3.44),
                                  Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 14.91,
                                          height: 14.91,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(),
                                          child: Stack(children: [

                                              ]),
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
                      const SizedBox(width: 20.64),
                      Text(
                        '-250pts',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFE30000),
                          fontSize: 11.21,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          height: 0.12,
                        ),
                      ),
                      const SizedBox(width: 20.64),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 92.44,
                              height: 92.44,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 3.75,
                                    top: 3.75,
                                    child: Opacity(
                                      opacity: 0.50,
                                      child: Container(
                                        width: 85.15,
                                        height: 85.15,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFC7E9F4),
                                          shape: OvalBorder(),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 17.22,
                                    top: 33.25,
                                    child: SizedBox(
                                      width: 60.33,
                                      height: 25.91,
                                      child: Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              text: '250\n',
                                              style: TextStyle(
                                                color: Color(0xFF3193B1),
                                                fontSize: 17.44,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w800,
                                                height: 0.05,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'of 999',
                                              style: TextStyle(
                                                color: Color(0xFF3193B1),
                                                fontSize: 13.15,
                                                fontFamily: 'Avenir',
                                                fontWeight: FontWeight.w800,
                                                height: 0.09,
                                              ),
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6.88),
                            SizedBox(
                              width: 137.59,
                              height: 16.05,
                              child: Text(
                                'Avg credit score in your area ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF3193B1),
                                  fontSize: 13.76,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w800,
                                  height: 0,
                                  letterSpacing: -0.60,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 170,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFBFDFC),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xDDDDDDDD)),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0C8E8E93),
                        blurRadius: 15,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Total Accounts',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 121,
                                    height: 121,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 103.28,
                                          top: 17.72,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF90BE6D),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 103.28,
                                          top: 17.72,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFF9C74F),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 103.28,
                                          top: 103.28,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFF3722C),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 121,
                                          top: 60.50,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(2.36),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF2D9CDB),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 103.28,
                                          top: 103.28,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF4CAF50),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 17.72,
                                          top: 17.72,
                                          child: Container(
                                            width: 85.56,
                                            height: 85.56,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFF94144),
                                              shape: OvalBorder(),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 103.28,
                                          top: 103.28,
                                          child: Transform(
                                            transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-3.14),
                                            child: Container(
                                              width: 85.56,
                                              height: 85.56,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFFF3722C),
                                                shape: OvalBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 18),
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 9,
                                                      height: 9,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF94144),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 77,
                                                      height: 17,
                                                      child: Text(
                                                        '1 Credit card ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 9,
                                                      height: 9,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFF2D9CDB),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 108,
                                                      height: 17,
                                                      child: Text(
                                                        '4 Personal Loans',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 9,
                                                      height: 9,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFF4CAF50),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 99,
                                                      height: 17,
                                                      child: Text(
                                                        '1 Housing Loan ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 9),
                                        Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 9,
                                                      height: 9,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF9C74F),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 77,
                                                      height: 17,
                                                      child: Text(
                                                        '1 Other Loan ',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      width: 9,
                                                      height: 9,
                                                      decoration: ShapeDecoration(
                                                        color: Color(0xFFF8961E),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                    const SizedBox(width: 8),
                                                    SizedBox(
                                                      width: 70,
                                                      height: 17,
                                                      child: Text(
                                                        '1 Auto Loan',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontFamily: 'Inter',
                                                          fontWeight: FontWeight.w400,
                                                          height: 0,
                                                        ),
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
                // _submitButton(),
              ],
            ),
          ),
        )
    );
  }
}
