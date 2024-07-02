import 'package:cred_assess/screens/component/home/griditems.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class moreScreen extends StatefulWidget {
  const moreScreen({super.key});

  @override
  State<moreScreen> createState() => _moreScreenState();
}

class _moreScreenState extends State<moreScreen> {
  String dropdownValue = 'USD';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // First part: 30% of the screen height
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            padding: const EdgeInsets.all(TSizes.spaceBtwItems),
            decoration: const BoxDecoration(
              color: TColors.primary,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: TSizes.spaceBtwSections, bottom: TSizes.spaceBtwItems),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, Ibukun 👋',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: TColors.light,
                                        fontFamily: GoogleFonts.merriweather()
                                            .fontFamily,
                                      ),
                                ),
                                Text(
                                  'Manage all your finance with Access!',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
                                        color: TColors.light,
                                      ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: TSizes.defaultSpace),
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.white, width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: DropdownButton<String>(
                                value: dropdownValue,
                                padding: EdgeInsets.zero,
                                menuMaxHeight: 0,
                                icon: const Icon(Icons.arrow_left),
                                style: const TextStyle(color: Colors.black),
                                underline: Container(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                                items: <String>[
                                  'USD',
                                  'Naira',
                                  'AED'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                            color: TColors.light,
                                          ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: TSizes.spaceBtwItems),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total available balance',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge!
                                        .copyWith(
                                            color: TColors.light,
                                            fontFamily: GoogleFonts.poppins()
                                                .fontFamily),
                                  ),
                                  Text('000,000.00',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                      fontWeight: FontWeight.bold,
                                        color: TColors.light,),),
                                ],
                              ),
                            ))
                          ],
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: TColors.white,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: TSizes.md,
                                      vertical: TSizes.sm),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(TSizes
                                        .borderRadiusSm), // Border radius set to 3
                                  ), // Additional padding if required
                                ),
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                child: Text(
                                  'Access Dashboard',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: TColors.primary),
                                ),
                              ),
                              const SizedBox(width: TSizes.spaceBtwItems),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: TSizes.xl,
                                      vertical: TSizes.sm),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        TSizes.borderRadiusSm), // Border radius
                                  ),
                                  side: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0), // White outline border
                                ),
                                onPressed: () {
                                  // Add your onPressed logic here
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.account_balance_wallet_rounded,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    // Wallet icon
                                    const SizedBox(width: 8),
                                    // Space between icon and text
                                    Text(
                                      'Wallet',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: TColors.white),
                                    ),
                                  ],
                                ),
                              )
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Second part: 70% of the screen height and scrollable
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: TSizes.spaceBtwItems, left: TSizes.spaceBtwItems),
                    child: Text(
                      'Our Services',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                        fontFamily: GoogleFonts.merriweather().fontFamily,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.spaceBtwItems),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: items.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 9.0,
                        mainAxisSpacing: 9.0,
                      ),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, items[index]["route"]);
                          },
                          child: GridItem(
                            icon: items[index]["icon"],
                            title: items[index]["title"],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  // Spacer between GridView and Text items
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.spaceBtwItems),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CreditAccess functions as a credit broker, not a lender. If you decide to obtain a product, we receive a commission. However, our independence ensures that we never prioritize offers based on our earnings.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Learn More',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: TColors.primaryYellow2,
                                  ),
                            ),
                            const Icon(
                              Icons.info_outline_rounded,
                              color: TColors.primaryYellow2,
                              size: 18,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.spaceBtwItems),
                    child: Text(
                      'Recent activities',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(
                            fontFamily: GoogleFonts.merriweather().fontFamily,
                          ),
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems),
                    child: Row(
                      children: [
                        Text(
                          '0',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontFamily:
                                    GoogleFonts.merriweather().fontFamily,
                              ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Text('You have not performed any activities yet',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                            fontSize: 15,
                            color:Color(0xff071F15),
                            fontFamily: GoogleFonts.merriweather().fontFamily,
                          ),),
                      ],
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.spaceBtwItems),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'CreditAccess functions as a credit broker, not a lender. If you decide to obtain a product, we receive a commission. However, our independence ensures that we never prioritize offers based on our earnings.',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Learn More',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                color: TColors.primaryYellow2,
                              ),
                            ),
                            const Icon(
                              Icons.info_outline_rounded,
                              color: TColors.primaryYellow2,
                              size: 18,
                            ),
                          ],
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
