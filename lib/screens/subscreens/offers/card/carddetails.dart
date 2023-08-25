import 'package:cred_assess/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CurvedContainer extends StatefulWidget {
  final String typi;

  const CurvedContainer({super.key, required this.typi});

  @override
  State<CurvedContainer> createState() => _CurvedContainerState();
}

class _CurvedContainerState extends State<CurvedContainer> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            child: Stack(
              children: [
                Container(
                  height: 220,
                  child: Positioned.fill(
                    child: ClipPath(
                      clipper: CurvedBottomClipper(),
                      child: Container(
                        color: Color(0xFFD7E5E7),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Image.asset(
                      'images/${widget.typi}.png', width: 400,
                      // height: 300,
                    ),
                  ),
                ),
                Positioned(
                  top: 4,
                  left: 0,
                  right: 0,
                  child: Center(
                    child:  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35),
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        'Cards',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w400,
                                          height: 1.60,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding:EdgeInsets.all(17.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4.1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 9.0),
                          child: Row(
                            children: [
                              Icon(Icons.star, size: 24, color: Colors.amber,),
                              Icon(Icons.star, size: 24, color: Colors.amber,),
                              Icon(Icons.star, size: 24, color: Colors.amber,),
                              Icon(Icons.star, size: 24, color: Colors.amber,),
                              Icon(Icons.star_half_rounded, size: 24, color: Colors.amber,),
                            ],
                          ),
                        ),
                        Text(
                          '(320)',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 11),
                      child: Text(
                        'Access Bank Credit Card',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          height: 1.60,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 22,),
                      decoration: ShapeDecoration(
                        color: Color(0xFFF9F4ED),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pre-approved',
                                style: TextStyle(
                                  color: Color(0xFF4CAF50),
                                  fontSize: 14,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w800,
                                  height: 1.82,
                                ),
                              ),
                              Icon(
                                Icons.check_circle_outline_rounded,
                                color: Color(0xFF4CAF50),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '34.9%\n',
                                      style: TextStyle(
                                        color: Color(0xFF4CAF50),
                                        fontSize: 14,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w800,
                                        height: 1.36,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Guaranteed APR',
                                      style: TextStyle(
                                        color: Color(0xFF4CAF50),
                                        fontSize: 12,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w400,
                                        height: 1.58,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.check_circle_outline_rounded,
                                color: Color(0xFF4CAF50),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Credit limit\n',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w800,
                                        height: 1.36,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'upon application',
                                      style: TextStyle(
                                        color: Color(0xFF66666A),
                                        fontSize: 12,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w400,
                                        height: 1.58,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    _submitButton(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Representative Example',
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: 15,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            height: 1.60,
                          ),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. ',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28.0,bottom: 10),
                      child: Text(
                        'More details',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 16,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          height: 1.60,
                        ),
                      ),
                    ),
                    Column(
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
                        Text(
                          'According to our reviews, this application is highly regarded and has the highest completion rate.',
                          style: TextStyle(
                            color: Color(0xFF757575),
                            fontSize: 14,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w400,
                            height: 1.60,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ///-----------------------------------
  ///login buton
  ///---------------------------------
  Widget _submitButton() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: CustomColors.darkpurple,
          borderRadius: BorderRadius.all(Radius.circular(8))),

      child: Expanded(
        child: TextButton(

            child: _buildChild(),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(CustomColors.darkpurple,)),
            onPressed: () async {
              // Navigation.push(cardScreen(),
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
    if (_isLoading) {
      return Transform.scale(
          scale: 0.5,
          child: const CircularProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation(Colors.red),
            strokeWidth: 5,
          ));
    }
    return Text(
        "Apply Now",
        style: GoogleFonts.roboto(textStyle: const TextStyle(fontSize: 15, color: CustomColors.white,fontWeight: FontWeight.w500,
          height: 1,
          letterSpacing: 0.36,)),textAlign: TextAlign.center
    );
  }
}

class CurvedBottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 40); // Starting point

    path.relativeQuadraticBezierTo(100, -60, size.width, 20);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
