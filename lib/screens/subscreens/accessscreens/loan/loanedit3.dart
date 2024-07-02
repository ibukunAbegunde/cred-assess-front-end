import 'package:cred_assess/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loanEditthree extends StatefulWidget {
  final String typi;

  const loanEditthree({super.key, required this.typi});

  @override
  State<loanEditthree> createState() => _loanEditthreeState();
}

class _loanEditthreeState extends State<loanEditthree> {
  bool _isLoading = false;
  List<bool> _expandedList = List.generate(3, (_) => false);

  void _toggleExpansion(int index) {
    setState(() {
      _expandedList[index] = !_expandedList[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Padding(
                    padding:EdgeInsets.all(17.0),
                    child: Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(200),
                            border: Border.all(
                              color: Color(0xFFBDBDBD),
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(200),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/${widget.typi}.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 11),
                          child: Text(
                            'Guarantee Trust bank - \nN 1,000,000 a year',
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '4.19%\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Initial rate',
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
                                  SizedBox(height: 19,),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '5.7%\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'APRC',
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
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '5 years\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Initial rate',
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
                                  SizedBox(height: 19,),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'N65,000\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Initial monthly \npayments',
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
                                  )
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Fixed\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Initial rate type',
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
                                  SizedBox(height: 19,),
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'N100,000\n',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            height: 1.27,
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
                                  )
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
                              'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit,',
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
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return ExpansionPanelList(
                        elevation: 0,
                        expandedHeaderPadding: EdgeInsets.zero,
                        expansionCallback: (panelIndex, isExpanded) {
                          _toggleExpansion(index);
                        },
                        children: [
                          ExpansionPanel(
                            headerBuilder: (context, isExpanded) {
                              return ListTile(
                                tileColor:Color(0xFFF5F5F5),
                                title: Text('More details',style: TextStyle(
                                  color: Color(0xFF212121),
                                  fontSize: 16,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w800,
                                  height: 1.60,
                                ),),
                              );
                            },
                            body: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam ',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            isExpanded: _expandedList[index],
                          ),
                        ],
                      );
                    },
                  ),
                ],
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
