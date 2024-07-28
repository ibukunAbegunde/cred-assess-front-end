import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/controllers/user_controller.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/investment/equitycomponents/chartBar.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/investment/equitycomponents/progressbarwidget.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class investNow extends StatelessWidget {
  investNow({super.key, required this.imageString});


  final String imageString;


  String dropdownValue = 'USD';
  bool _isSwitched = false;


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: CAppBar(
        color: TColors.white,
        leadingIcon: Icons.arrow_back_ios_new_rounded,
        leadingInPressed: () => Get.back(),
        title: Center(
          child: Text(
            'Target',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontSize: 14,
              color: TColors.black,
              fontFamily: GoogleFonts.merriweather().fontFamily,
            ),
          ),
        ),
        actions: [
          SizedBox(
              width: 80,
              child:
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
          const EdgeInsets.symmetric(horizontal: TSizes.spaceBtwItems / 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Risk Level: Moderate',
                    style: Theme.of(Get.context!)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 15),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: TColors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(imageString,
                        height: MediaQuery.of(context).size.width * 0.4,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Center(
                child: Text(
                  'UNITED STATES',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: TColors.black,
                    fontFamily: GoogleFonts.merriweather().fontFamily,
                  ),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(width: 4),
                          Text('Treasury bills',
                              style: Theme.of(context).textTheme.titleSmall),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0),
                            child: VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Text('5.52%',
                              style: Theme.of(context).textTheme.titleLarge),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: TColors.lightGrey,
                      border: Border.all(color: TColors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.md, vertical: TSizes.sm),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: TSizes.md,
                        ),
                        const SizedBox(width: 2),
                        Text('905 investors',
                            style:
                            Theme.of(context).textTheme.titleSmall)
                      ],
                    ),
                  ),
                  const SizedBox(width: TSizes.lg),
                  Container(
                    decoration: BoxDecoration(
                      color: TColors.lightGrey,
                      border: Border.all(color: TColors.grey, width: 1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: TSizes.lg / 2, vertical: TSizes.sm),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: TSizes.md,
                        ),
                        const SizedBox(width: 2),
                        Text('15 days left',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                fontWeight: FontWeight.w400, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems/2),
              progrssbarwidget(title: '', subTitle: '82% funded', progress: 0.8,),
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'About USTB',
                style: Theme.of(Get.context!).textTheme.headlineSmall!.copyWith(
                    fontFamily: GoogleFonts.merriweather().fontFamily),
              ),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              Text(
                'USTB obligation backed by the U.S. Treasury Department with a maturity of one year or less. Treasury bills are usually sold in denominations of \$1,000, while some can reach a maximum denomination of \$5 million.',
                style: Theme.of(Get.context!)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Learn More',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
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
              const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              barchat(titleOne:'Projected Return on Investment of USTB', titleTwo: '\$1,000.00 in 1 month', tileOne: 'Investment', tileOneb: '\$1,000.00', tileTwo: 'Interest rate', tileTwob: '%5.52', tileThree: 'ROI',  tileThreeb: '\$1,552.00', rowtitleone: 'Initial investment', rowtitleTwo: 'Maturity (1 month)', rowtitlethree: 'Estitamed ROI', rowsubOne: '\$1,000.00', rowsubTwo: '5.452%', rowsubThree: '\$1,552.15'),

              const SizedBox(height: TSizes.spaceBtwItems),
              ElevatedButton(
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
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  print("Buy Plan");
                  // insuranceLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      color: TColors.white,
                    ),
                    Text('Fund now'),
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

