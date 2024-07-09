import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/controllers/user_controller.dart';
import 'package:cred_assess/screens/profile/profilewidgets/listcards.dart';
import 'package:cred_assess/screens/profile/profilewidgets/profilePicture.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insurancecomponents/insurancecard.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insuranceofferingdetails.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class insuranceOffering extends StatelessWidget {
  String dropdownValue = 'USD';
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {

    final controller = Get.put(UserController());
    return Scaffold(
      appBar: CAppBar(
        showArrowColor: true,
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        leadingInPressed: () => Get.back(),
        title: Center(
          child: Text(
            'Health Insurance',
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(
              fontSize: 14,
              color: TColors.white,
              fontFamily: GoogleFonts.merriweather().fontFamily,
            ),
          ),
        ),
        actions: [
          SizedBox(width:80,child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        ],
      ),
      body: Column(
        children: [
         Row(
            children: [
              Expanded(
                child: Container(
                  color: TColors.primary,
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      SizedBox(height: 8.0),
                      Text(
                        'Become a shareholder in  companies like Tesla, Apple with Equity',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                          color: TColors.white,
                          fontFamily: GoogleFonts.merriweather().fontFamily,
                        ),
                      ),
                      SizedBox(height: TSizes.defaultSpace),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Did you know ? ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                    color: TColors.white,
                                    fontSize: 15,
                                    fontFamily: GoogleFonts.merriweather().fontFamily,
                                  ),
                                ),
                                Text(
                                  'ROI on equity can potentially beat inflation rate',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                    color: TColors.white,
                            
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: TSizes.sm),
                          SvgPicture.asset(
                            'images/undraw_fitness_stats_sht6.svg',
                            width: MediaQuery.of(context).size.width * 0.3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: TSizes.spaceBtwSections/2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: TSizes.defaultSpace/2),
                            decoration: BoxDecoration(
                              color: TColors.lightGrey,
                              border:
                              Border.all(color:TColors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:IntrinsicHeight(
                              child: Row(
                                children: [
                                  Icon(Iconsax.candle_2),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                                    child: VerticalDivider(
                                      color: Colors.grey,
                                      thickness: 1,
                                    ),
                                  ),
                                  Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<String>(
                                        hint: const Text('Pref. Hospital'),
                                        style: const TextStyle(color: Colors.black),
                                        items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'].map((String value) {
                                          return DropdownMenuItem(
                                            value: value, // Use value here
                                            child: Text(value, style: const TextStyle(color: Colors.black)), // Use value here as well
                                          );
                                        }).toList(),
                                        icon: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            const Icon(
                                              Icons.keyboard_arrow_up,
                                              color: Colors.black, size: 12,
                                            ),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: Colors.black, size: 12,
                                            ),
                                          ],
                                        ),
                                        onChanged: (value) {
                                          print(value);
                                          // Add your logic to update the dropdownValue here
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )

                        ),
                        Container(
                            padding: const EdgeInsets.all(TSizes.defaultSpace/3),
                            decoration: BoxDecoration(
                              color: TColors.lightGrey,
                              border:
                              Border.all(color:TColors.grey, width: 1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Icon(Iconsax.search_normal),

                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.spaceBtwItems, vertical: TSizes.defaultSpace/2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'View all',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                            fontSize: 12,
                          ),
                        ),
                        const Icon(Icons.arrow_right,color: TColors.primaryYellow2,)
                      ],
                    ),
                  ),
                  /// -- More Details

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace/2),
                    child: Column(
                      children: [
                        TinsuranceCardList(
                          title: 'Magnum',
                          titlenumber: '5',
                          amount: '1.2m',
                          rating: '5',
                          reviews: '(23 reviews)',
                          onpressed: ()=>Get.to(insuranceOfferingDetails()),
                          iconData: Iconsax.add,
                        ),
                        TinsuranceCardList(
                          title: 'Diamond Beryl',
                          titlenumber: '4',
                          amount: '421k',
                          rating: '3',
                          reviews: '(12 reviews)',
                          onpressed: (){},
                          iconData: Iconsax.add,
                        ),
                        TinsuranceCardList(
                          title: 'Red Lotus',
                          titlenumber: '2',
                          amount: '321k',
                          rating: '5',
                          reviews: '(32 reviews)',
                          onpressed: (){},
                          iconData: Iconsax.add,
                        ),
                        TinsuranceCardList(
                          title: 'Magnum',
                          titlenumber: '3',
                          amount: '121k',
                          rating: '5',
                          reviews: '(2 reviews)',
                          onpressed: (){},
                          iconData: Iconsax.add,
                        ),
                        TinsuranceCardList(
                          title: 'Emerald',
                          titlenumber: '1',
                          amount: '1.6m',
                          rating: '4',
                          reviews: '(2 reviews)',
                          onpressed: (){},
                          iconData: Iconsax.add,
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
    );
  }
}
