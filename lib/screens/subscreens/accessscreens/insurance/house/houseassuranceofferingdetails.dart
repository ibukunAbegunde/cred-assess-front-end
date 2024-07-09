import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/controllers/user_controller.dart';
import 'package:cred_assess/screens/profile/profilewidgets/more_list_option.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/house/houseofferings.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class houseOfferingDetails extends StatelessWidget {
  String dropdownValue = 'USD';
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('images/house.png'),
                  )),
                  child: Stack(
                    children: [
                      Image.asset('images/house.png'),
                      Container(
                        margin: EdgeInsets.all(TSizes.defaultSpace),
                        // padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace,vertical: TSizes.sm),
                        decoration: BoxDecoration(
                          color: TColors.white,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: CpopupAppBar(
                          showArrowColor: false,
                          leadingIcon: Icons.arrow_back_ios_new_rounded,
                          texttile: 'Home insurance',
                          leadingInPressed: () => Get.back(),
                          title: Center(
                            child: Text(
                              'My House',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                    fontSize: 14,
                                    color: TColors.black,
                                    fontFamily:
                                        GoogleFonts.merriweather().fontFamily,
                                  ),
                            ),
                          ),
                          actions: [
                            SizedBox(
                                width: 80,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.menu))),
                          ],
                        ),
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
                    height: TSizes.spaceBtwSections / 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Property information',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                fontSize: 13,
                                fontFamily: GoogleFonts.merriweather().fontFamily,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(Iconsax.edit),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections / 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: TColors.grey, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              TMoreoptionHealthList(
                                title: 'Address',
                                subtitle: '5 Karimu st, VI Lagos, NG',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'Property type',
                                subtitle: 'Residential',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'House type',
                                subtitle: '5 bed, Duplex',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'Total square meter',
                                subtitle: '5,321m2',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'No. of occupants',
                                subtitle: '8',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'Property value',
                                subtitle: 'N856,000,000.00',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'Ownership',
                                subtitle: 'Ibukun Abegunde',
                                onpressed: () {},
                              ),
                              TMoreoptionHealthList(
                                title: 'Mortgage',
                                subtitle: 'No',
                                onpressed: () {},
                                iconstate: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  /// -- More Details
                  const SizedBox(
                    height: TSizes.spaceBtwSections / 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace / 2),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: TColors.light,
                        backgroundColor: TColors.primary,
                        disabledForegroundColor: TColors.darkGrey,
                        disabledBackgroundColor: TColors.buttonDisabled,
                        side: const BorderSide(color: TColors.primary),
                        padding:
                        const EdgeInsets.symmetric(vertical: TSizes.buttonHeight),
                        textStyle: const TextStyle(
                          fontSize: 16,
                          color: TColors.textWhite,
                          fontWeight: FontWeight.w600,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      onPressed: () {
                        print("Button pressed");
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => houseOffering(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text('Confirm'),
                        ],
                      ),
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
