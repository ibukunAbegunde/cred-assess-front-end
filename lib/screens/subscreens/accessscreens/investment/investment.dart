
import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/screens/component/home/popups.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/component/home/diagtest.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class investmentOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        showArrowColor: true,
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        leadingInPressed: () => Get.back(),
        title: Center(
          child: Text(
            'Investment options',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(
              color: TColors.white,
              fontFamily: GoogleFonts.merriweather().fontFamily,
            ),
          ),
        ),
        actions: [
          SizedBox(width:80, child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        ],
      ),
      body: Column(
        children: [
          // First part: 30% of the screen height
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              color: TColors.primary,
            ),
            child: Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20),
              child: Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 1),
                    Expanded(
                      child: Center(
                        child: SvgPicture.asset(
                          'images/rafiki.svg',
                          width: 300.0,
                          height: 300.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Second part: 70% of the screen height and scrollable
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                        'Explore various invesment curated and vetted just for you !', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700, fontSize: 16)),
                    const SizedBox(
                      height: 18,
                    ),
                    // Spacer between GridView and Text items
                    GestureDetector(
                      onTap: (){
                        print('object');
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return CustomDialog(); // Your custom dialog widget
                          },
                        );
                      },
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'Equities (Stock)',
                        subtitle: 'Invest in companies like Tesla, Apple etc.',
                        Ontap: () {
                        },
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'Bonds & Treasury Bills',
                        subtitle: 'Government certified invesment',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'Real Estate',
                        subtitle: 'Highest ranking investment',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'Mutual Funds',
                        subtitle: 'Put your money to work and watch it grow',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'Agro Finance',
                        subtitle: 'Join the farming trend',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'ETF’s',
                        subtitle: 'More detailed money fund for you',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'IPO’s',
                        subtitle: 'Public offers in the largest corporations',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'IPO’s',
                        subtitle: 'Public offers in the largest corporations',
                        Ontap: () {},
                      ),
                    ),
                    const Divider(),
                    GestureDetector(
                      onTap: (){CLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');},
                      child: tilesComponent(
                        icon: 'images/bag.png',
                        title: 'IPO’s',
                        subtitle: 'Public offers in the largest corporations',
                        Ontap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}