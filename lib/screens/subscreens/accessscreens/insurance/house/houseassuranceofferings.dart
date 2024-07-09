import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/controllers/user_controller.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/house/houseofferingdetails.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class houseOffering extends StatelessWidget {
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
                        'Your home properties are safe with us, we care for it like it ours!',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                          color: TColors.white,
                          fontFamily: GoogleFonts.merriweather().fontFamily,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                                    SizedBox(width: TSizes.sm),
                                    Padding(
                                      padding: const EdgeInsets.only(right:TSizes.defaultSpace*2),
                                      child: SvgPicture.asset(
                                        'images/undraw_at_home_re_1m0v.svg',
                                        width: MediaQuery.of(context).size.width * 0.12,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'You can get discounts on group packages than single packges',
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
                            child:Directionality(
                              textDirection: TextDirection.ltr,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  hint: const Text('Pref. Hospital   '),
                                  style: const TextStyle(color: Colors.black),
                                  items: <String>['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'].map((String value) {
                                    return DropdownMenuItem(
                                      value: value, // Use value here
                                      child: Text(value, style: const TextStyle(color: Colors.black)), // Use value here as well
                                    );
                                  }).toList(),
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.black, size: 12,
                                  ),
                                  onChanged: (value) {
                                    print(value);
                                    // Add your logic to update the dropdownValue here
                                  },
                                ),
                              ),
                            )

                        ),
                      ],
                    ),
                  ),
                  /// -- More Details
                  const SizedBox(
                    height: TSizes.spaceBtwSections/2,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace/2),
                    child: Column(
                      children: [
                        RealEstateCard(),
                        RealEstateCard(),
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
class RealEstateCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Get.to(houseOfferingDetails()),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: const BorderSide(width: 0.5, color: Colors.grey),),
      
        shadowColor: Colors.black.withOpacity(0.25),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: Image.asset(
                  'images/house.png', // Replace with your image URL
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: TSizes.spaceBtwItems/2,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.bed,size: TSizes.md,),
                                SizedBox(width: 4),
                                Text('5'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                Icon(Icons.home,size: TSizes.md,),
                                SizedBox(width: 4),
                                Text('Sole ownership'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                Icon(Icons.people,size: TSizes.md,),
                                SizedBox(width: 4),
                                Text('8'),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 1,
                                  ),
                                ),
                                Icon(Icons.location_on,size: TSizes.md,),
                                SizedBox(width: 4),
                                Text('Lagos, NG'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections/2,
                    ),
                    Text(
                      '5 Bed apartment in Victoria Island, Lagos Nigeria',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwSections/2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Property Value',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 10),
                            ),
                            Text(
                              'N856,000,000.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: TColors.primary,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'No active policy',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                            color: TColors.error,
                              fontWeight: FontWeight.w800,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}