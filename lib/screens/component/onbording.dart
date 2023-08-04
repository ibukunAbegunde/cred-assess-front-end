
import 'package:cred_assess/assets/colors.dart';
import 'package:cred_assess/assets/content_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onbording extends StatefulWidget {
  @override
  _OnbordingState createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,),
                      child: Image.asset(
                        contents[i].image,
                        // height: 300,
                      ),
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0,),
                      child: Column(
                        children: [
                          Text(
                            contents[i].title,
                            style:GoogleFonts.roboto(
                              textStyle:CustomColors.onboardtitle),
                          ),
                          SizedBox(height: 10),
                          Text(
                            contents[i].discription,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              textStyle:CustomColors.onboarddes),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 26.0,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                contents.length,
                                    (index) => buildDot(index, context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                );
              },
            ),
          ),

        ],
      );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 10 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? CustomColors.darkpurple: Colors.grey.shade300,
      ),
    );
  }
}
