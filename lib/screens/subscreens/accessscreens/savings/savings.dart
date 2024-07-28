
import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/loan/loanedit1.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class savingsOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        showArrowColor: true,
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        leadingInPressed: () => Get.back(),
        title: Padding(
          padding: const EdgeInsets.only(left: TSizes.defaultSpace*2),
          child: Text(
            'Savings',
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
          IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                          'Build  and track all your savings all in one place !', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color:TColors.white, fontWeight: FontWeight.w700, fontSize: 18)),
                    ),
                    const SizedBox(height: 1),
                    Expanded(
                      child: Center(
                        child: SvgPicture.asset(
                          'images/Saving money-pana 2.svg',
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
                    tilesComponent(
                      icon: 'images/bag.png',
                      title: 'Cred-saver',
                      subtitle: 'Build your savings with ease and disciple with Credit Access savings plan Cred-saver. ',
                      Ontap: () {
                        Navigation.push(const loanEditOne(), context);
                      },
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace/2,
                    ),
                    tilesComponent(
                      icon: 'images/bag.png',
                      title: 'Piggyvest',
                      subtitle: 'Piggyvest offers different rates based on its different savings plans.',
                      Ontap: () {},
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace/2,
                    ),
                    tilesComponent(
                      icon: 'images/bag.png',
                      title: 'Cowrywise',
                      subtitle: 'Cowrywise provides a mobile app that enables users to access various saving options',
                      Ontap: () {},
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace/2,
                    ),
                    tilesComponent(
                      icon: 'images/bag.png',
                      title: 'Kuda money App',
                      subtitle: 'Kuda includes tools for tracking your spending habits, saving more, and making the right money moves.',
                      Ontap: () {},
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

