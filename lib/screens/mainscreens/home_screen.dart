import 'package:cred_assess/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String id = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffFAFAFA),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome back, Ibukun!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF191A1F),
                                fontSize: 18,
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.w700,
                                height: 1.32,
                              ),
                            ),
                            const SizedBox(height: 1),
                            Container(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Here is your updated credit score',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF66666A),
                                            fontSize: 12,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                            height: 1.60,
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
                      Row(children: [
                        Icon(Icons.account_circle_outlined, size: 30,),
                        Icon(Icons.notifications_none_rounded, size: 30,)
                      ],)
                    ],
                  ),
                ),
                Container(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8.0),
                  child: SfRadialGauge(
                    axes: <RadialAxis>[RadialAxis(
                  showLabels: false,
                  showAxisLine: false,
                  showTicks: false,
                  maximum: 99,
                  radiusFactor:0.7,
                        // model.isWebFullView ? 0.8 :
                        ranges: <GaugeRange>[  GaugeRange(
                            startValue: 0,
                            endValue: 20,
                            color: const Color(0xFFFE2A25),
                            // Added range label
                            label: 'VERY POOR',
                            sizeUnit: GaugeSizeUnit.factor,
                            labelStyle: GaugeTextStyle(
                                fontFamily: 'Times', fontSize: 10 ),
                          startWidth: 0.25,
                          endWidth: 0.25,),
                          GaugeRange(
                            startValue: 21,
                            endValue: 40,
                            color: const Color(0xFFFF57B09),
                            // Added range label
                            label: 'POOR',
                            labelStyle: GaugeTextStyle(
                                fontFamily: 'Times', fontSize:10 ),
                            startWidth: 0.25,
                            endWidth: 0.25,
                            sizeUnit: GaugeSizeUnit.factor,
                          ),
                          GaugeRange(
                            startValue: 41,
                            endValue: 60,
                            color: const Color(0xFFEEC522),
                            // Added range label
                            label: 'FAIR',
                            labelStyle: GaugeTextStyle(
                                fontFamily: 'Times', fontSize: 10 ),
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.25,
                            endWidth: 0.25,
                          ),
                          GaugeRange(
                            startValue: 61,
                            endValue: 80,
                            color: const Color(0xFF00AB47),
                            // Added range label
                            label: 'GOOD',
                            labelStyle: GaugeTextStyle(
                                fontFamily: 'Times', fontSize: 10 ),
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.25,
                            endWidth: 0.25,
                          ),
                          GaugeRange(
                            startValue: 81,
                            endValue: 99,
                            color: CustomColors.darkpurple,
                            // Added range label
                            label: 'EXCELLENT',
                            labelStyle: GaugeTextStyle(
                                fontFamily: 'Times', fontSize: 10 ),
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.25,
                            endWidth: 0.25,
                          ),
                          // Added small height range in bottom to show shadow effect.
                          GaugeRange(
                            startValue: 0,
                            endValue: 99,
                            color: const Color.fromRGBO(155, 155, 155, 0.3),
                            rangeOffset: 0.4,
                            sizeUnit: GaugeSizeUnit.factor,
                            startWidth: 0.15,
                            endWidth: 0.15,
                          ),
                        ]
                    )
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
                                  "Factors affecting your credit score",
                                  style: GoogleFonts.merriweather(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w700,
                                      height: 1.60,
                                    ),
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text('1 Negative'),
                                leading: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.check_box_outlined,color: CustomColors.darkpurple,)
                                  ],
                                ),trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                                horizontalTitleGap: 0,
                              ),
                              ListTile(
                                title: Text('2 Positives'),
                                leading: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.error_outline, color: CustomColors.red,)
                                  ],
                                ),trailing: Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              ),
                                horizontalTitleGap: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text(
                                      "Tips & Tricks",
                                      style: GoogleFonts.merriweather(
                                        textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 18,
                                          fontFamily: 'Merriweather',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    subtitle: Row(children: [
                                      Text(
                                        'Find more ways to improve your credit score',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF66666A),
                                          fontSize: 12,
                                          fontFamily: 'Avenir',
                                          fontWeight: FontWeight.w400,
                                          height: 1.60,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                        child: Icon(Icons.lightbulb_outline_rounded, color: Colors.blue,),
                                      )
                                    ]))

                          ],
                        ),
                        Row(
                          children: [
                           Expanded(
                             child: Container(
                               padding: EdgeInsets.symmetric(horizontal: 5, vertical: 18),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10), // Border radius
                                 border: Border.all(
                                   color:Color(0xFFC19961), // Border color
                                   width: 1, // Border width
                                 ),
                               ),
                               child: Column(
                                 children: [
                                   Row(
                                     children: [
                                       Expanded(child: Text('Pay Bills on Time:')), Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Icon(Icons.money),
                                       )
                                     ],
                                   ),
                                   Text('Consider adjusting due dates to align them with your income schedule.')
                                 ],
                               ),
                             ),
                           ),
                            SizedBox(width: 18,),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 18),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10), // Border radius
                              border: Border.all(
                                color: CustomColors.darkpurple, // Border color
                                width: 1, // Border width
                              ),
                            ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(child: Text('Diversify Your Credit Mix:')), Icon(Icons.money)
                                      ],
                                    ),
                                    Text('Aim for a healthy mix of credit types, such as credit cards, loans, and mortgages.')
                                  ],
                                ),
                              ),
                            )
                          ],
                        )
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

