import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/navigation.dart';
import 'package:cred_assess/screens/component/tiles.dart';
import 'package:cred_assess/screens/subscreens/offers/mortage/mortageone.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class mortScreen extends StatefulWidget {
  const mortScreen({super.key});

  @override
  State<mortScreen> createState() => _mortScreenState();
}

class _mortScreenState extends State<mortScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:CAppBar(
          showArrowColor: true,
          leadingIcon: Icons.arrow_back_ios_new_rounded,
          leadingInPressed: () => Get.back(),
          title: Center(
            child: Text(
              'Mortgages',
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
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                            'Get a great mortgage deal that could save you thousands',textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyLarge!.copyWith(color:TColors.white, fontWeight: FontWeight.w700, fontSize: 18)),
                      ),
                      const SizedBox(height: 1),
                      Expanded(
                        child: Center(
                          child:  Image.asset(
                            'images/Apartment.png',width: 300,
                            // height: 300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:TSizes.defaultSpace),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: TSizes.defaultSpace,
                      ),
                      Text(
                          'Compare mortgages from over 90 trusted lenders!', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700, fontSize: 16)),
                      const SizedBox(
                        height: TSizes.defaultSpace,
                      ),
                      tilesComponent(icon:'images/mort.png', title: 'Buying my first home', subtitle: 'Mortgages for your first property ', Ontap:(){Navigation.push(mortageOne(), context);},),
                      Divider(),
                      tilesComponent(icon:'images/mort.png', title: 'Moving or buying a new home', subtitle: 'Compare deals on a new mortgage', Ontap:(){},),
                      Divider(),
                      tilesComponent(icon:'images/mort.png', title: 'Remortgage', subtitle: 'Save money by switching mortgages', Ontap:(){},),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
