import 'package:flutter/material.dart';

class stabiltyScreen extends StatefulWidget {
  const stabiltyScreen({super.key});

  @override
  State<stabiltyScreen> createState() => _stabiltyScreenState();
}

class _stabiltyScreenState extends State<stabiltyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  'Stability Reports',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Merriweather',
                    fontWeight: FontWeight.w700,
                    height: 0.10,
                  ),
                ),
                Container(
                  width: 390,
                  height: 234,
                  margin: const EdgeInsets.only(top: 15),
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/390x234"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 42,
                        top: 106,
                        child: Container(
                          width: 306,
                          height: 109,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.00, -1.00),
                              end: Alignment(0, 1),
                              colors: [Color(0x59F2F2F2), Color(0x5EF0F0F0)],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 57,
                        top: 125,
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFF219D65),
                                        shape: OvalBorder(),
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    const Text(
                                      'Check Your Information',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontFamily: 'Merriweather',
                                        fontWeight: FontWeight.w700,
                                        height: 0.16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 117),
                              Container(
                                width: 15,
                                height: 15,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: const Stack(children: [
            
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 57,
                        top: 156,
                        child: Text(
                          'Lender feel more confident about your  ability to pay back debt if you \ncan show them your home or income isn’t likely to charge suddenly',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w400,
                            height: 0.20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 390,
                  height: 176,
                  margin: const EdgeInsets.only(top: 15),
                  padding: EdgeInsets.all(25),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x26BDBDBD),
                        blurRadius: 50,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'About your home',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  Text(
                                    'Update',
                                    style: TextStyle(
                                      color: Color(0xFF219D65),
                                      fontSize: 10,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 11,
                                    height: 11,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage("https://via.placeholder.com/11x11"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 4),
                                  const Text(
                                    'Confirmed through your credit report ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Container(
                            width: 320,
                            height: 73,
                            padding: const EdgeInsets.symmetric(
                              vertical: 25,
                              horizontal: 37,
                            ),
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(color: Color(0xFFD6FFED)),
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Having a fixed and steady address gives lenders confidence your circumstance won’t suddenly change ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 8,
                                      fontFamily: 'Merriweather',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 390,
                  height: 19,
                  margin: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Residential Status',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 11,
                              height: 11,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/11x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Text(
                              'Private Residence',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8,
                                fontFamily: 'Merriweather',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 393,
                  height: 155,
                  padding: EdgeInsets.all(25),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x26BDBDBD),
                        blurRadius: 50,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Container(
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
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Monthly rent payment',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Merriweather',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://via.placeholder.com/11x11"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            'N400,ooo',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8,
                                              fontFamily: 'Merriweather',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 13),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.only(left: 8),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Current address',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontFamily: 'Merriweather',
                                        fontWeight: FontWeight.w700,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 11,
                                                  height: 11,
                                                  decoration: const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: NetworkImage("https://via.placeholder.com/11x11"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            '45, Oba Akran Avenue, Ikeja, Lagos, Nigeria',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8,
                                              fontFamily: 'Merriweather',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
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
                ),
                Container(
                  width: 390,
                  height: 314,
                  margin: const EdgeInsets.only(top: 15),

                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    shadows: [
                      const BoxShadow(
                        color: Color(0x26BDBDBD),
                        blurRadius: 50,
                        offset: Offset(0, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      // widget(
                      //   child: Column(
                      //     mainAxisSize: MainAxisSize.min,
                      //     mainAxisAlignment: MainAxisAlignment.start,
                      //     crossAxisAlignment: CrossAxisAlignment.start,
                      //     children: [
                      //       Container(
                      //         child: Column(
                      //           mainAxisSize: MainAxisSize.min,
                      //           mainAxisAlignment: MainAxisAlignment.start,
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Container(
                      //               child: const Row(
                      //                 mainAxisSize: MainAxisSize.min,
                      //                 mainAxisAlignment: MainAxisAlignment.start,
                      //                 crossAxisAlignment: CrossAxisAlignment.center,
                      //                 children: [
                      //                   Text(
                      //                     'Employment & income',
                      //                     style: TextStyle(
                      //                       color: Colors.black,
                      //                       fontSize: 15,
                      //                       fontFamily: 'Merriweather',
                      //                       fontWeight: FontWeight.w700,
                      //                       height: 0,
                      //                     ),
                      //                   ),
                      //                   SizedBox(width: 137),
                      //                   Text(
                      //                     'Update',
                      //                     style: TextStyle(
                      //                       color: Color(0xFF219D65),
                      //                       fontSize: 10,
                      //                       fontFamily: 'Merriweather',
                      //                       fontWeight: FontWeight.w700,
                      //                       decoration: TextDecoration.underline,
                      //                       height: 0,
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //             const SizedBox(height: 11),
                      //             Container(
                      //               child: Row(
                      //                 mainAxisSize: MainAxisSize.min,
                      //                 mainAxisAlignment: MainAxisAlignment.start,
                      //                 crossAxisAlignment: CrossAxisAlignment.start,
                      //                 children: [
                      //                   Container(
                      //                     width: 11,
                      //                     height: 11,
                      //                     decoration: const BoxDecoration(
                      //                       image: DecorationImage(
                      //                         image: NetworkImage("https://via.placeholder.com/11x11"),
                      //                         fit: BoxFit.fill,
                      //                       ),
                      //                     ),
                      //                   ),
                      //                   const SizedBox(width: 4),
                      //                   const Text(
                      //                     'Confirmed through your account ',
                      //                     style: TextStyle(
                      //                       color: Colors.black,
                      //                       fontSize: 8,
                      //                       fontFamily: 'Merriweather',
                      //                       fontWeight: FontWeight.w400,
                      //                       height: 0,
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //       const SizedBox(height: 15),
                      //       Expanded(
                      //         child: Container(
                      //           width: 327,
                      //           height: 52,
                      //           padding: const EdgeInsets.symmetric(horizontal: 36.50, vertical: 16),
                      //           clipBehavior: Clip.antiAlias,
                      //           decoration: const BoxDecoration(color: Color(0xFFD6FFED)),
                      //           child: const Row(
                      //             mainAxisSize: MainAxisSize.min,
                      //             mainAxisAlignment: MainAxisAlignment.center,
                      //             crossAxisAlignment: CrossAxisAlignment.center,
                      //             children: [
                      //               SizedBox(
                      //                 width: 254,
                      //                 child: Text(
                      //                   'Lenders want to see that you have a regular income so you should be able to repay your debt',
                      //                   style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontSize: 8,
                      //                     fontFamily: 'Merriweather',
                      //                     fontWeight: FontWeight.w400,
                      //                     height: 0,
                      //                   ),
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
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
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Employment status',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontFamily: 'Merriweather',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 11,
                                                            height: 11,
                                                            decoration: const BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/11x11"),
                                                                fit: BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    const Text(
                                                      'Full-time employed',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 8,
                                                        fontFamily: 'Merriweather',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 13),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
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
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Annual income',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontFamily: 'Merriweather',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 11,
                                                            height: 11,
                                                            decoration: const BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/11x11"),
                                                                fit: BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    const Text(
                                                      'N3,200,000',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 8,
                                                        fontFamily: 'Merriweather',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 13),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            Container(
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
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                'Current occupation',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                  fontFamily: 'Merriweather',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                              const SizedBox(height: 10),
                                              Container(
                                                child: Row(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Container(
                                                            width: 11,
                                                            height: 11,
                                                            decoration: const BoxDecoration(
                                                              image: DecorationImage(
                                                                image: NetworkImage("https://via.placeholder.com/11x11"),
                                                                fit: BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(width: 4),
                                                    const Text(
                                                      'Financial analyst',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 8,
                                                        fontFamily: 'Merriweather',
                                                        fontWeight: FontWeight.w400,
                                                        height: 0,
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
                ),

                Container(
                  width: 393,
                  height: 155,
                  margin: const EdgeInsets.only(top: 15),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 390,
                          height: 155,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                            shadows: [
                              const BoxShadow(
                                color: Color(0x26BDBDBD),
                                blurRadius: 50,
                                offset: Offset(0, 2),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 31,
                        top: 34,
                        child: Text(
                          'Why is this information important?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 31,
                        top: 56.50,
                        child: Text(
                          'When you borrow money. It’s important that you can prove to lenders that you have \na fixed address and a steady source of income so they know you’re able to make\nrepayment on time.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 139,
                        top: 114,
                        child: Text(
                          'Find out more',
                          style: TextStyle(
                            color: Color(0xFF219D65),
                            fontSize: 10,
                            fontFamily: 'Merriweather',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
