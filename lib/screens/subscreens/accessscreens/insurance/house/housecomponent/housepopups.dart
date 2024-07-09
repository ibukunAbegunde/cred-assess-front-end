import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/assets/loaders/animation_loader.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insuranceforms/healthmulti.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insuranceforms/healthsingle.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:cred_assess/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class insurancePopUp extends StatefulWidget {
  @override
  _insurancePopUpState createState() => _insurancePopUpState();
}

class _insurancePopUpState extends State<insurancePopUp> {
  int currentSectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor:
          THelperFunctions.isDarkMode(context) ? TColors.dark : TColors.white,
      child: Container(
        decoration: BoxDecoration(
          color: THelperFunctions.isDarkMode(context)
              ? TColors.dark
              : TColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: currentSectionIndex == 0
                  ? 0
                  : -MediaQuery.of(context).size.width,
              right: currentSectionIndex == 0
                  ? 0
                  : MediaQuery.of(context).size.width,
              child: Container(
                height: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CpopupAppBar(
                      leadingIcon: Icons.arrow_back_ios_new_rounded,
                      leadingInPressed: () => Get.back(),
                      title: Text(
                        'Investment options',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              fontSize: 15,
                              fontFamily: GoogleFonts.merriweather().fontFamily,
                            ),
                      ),
                      texttile: 'Back',
                    ),
                    const SizedBox(height: TSizes.defaultSpace),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.defaultSpaces),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Help us manage your funds better',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontFamily:
                                      GoogleFonts.merriweather().fontFamily,
                                ),
                          ),
                          Text(
                            'Take a minute to answer the following questions !',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: TSizes.spaceBtwSections),
                            child: Center(
                              child: TAnimationLoadWidget(
                                text: 'text',
                                subtext:
                                    'The answers you provide would only be used to make personalized investment decisions!',
                                animation: 'images/undraw_discount_d-4-bd.svg',
                                showAction: true,
                                actionText: 'Continue',
                                onActionPressed: () {
                                  setState(() {
                                    currentSectionIndex =
                                        1; // Move to next section
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 300),
              left: currentSectionIndex == 1
                  ? 0
                  : MediaQuery.of(context).size.width,
              right: currentSectionIndex == 1
                  ? 0
                  : -MediaQuery.of(context).size.width,
              child: Container(
                height: 550,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CpopupAppBar(
                      leadingIcon: Icons.arrow_back_ios_new_rounded,
                      leadingInPressed: () => setState(() {
                        currentSectionIndex =
                            0; // Move back to the previous section
                      }),
                      title: Text(
                        'Investment options',
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(
                              fontSize: 15,
                              fontFamily: GoogleFonts.merriweather().fontFamily,
                            ),
                      ),
                      texttile: 'Back',
                    ),
                    const SizedBox(height: TSizes.defaultSpace),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.defaultSpaces),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Second Content',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontFamily:
                                      GoogleFonts.merriweather().fontFamily,
                                ),
                          ),
                          SvgPicture.asset(
                            'images/undraw_discount_d-4-bd.svg',
                            width: MediaQuery.of(context).size.width * 0.5,
                          ),
                          const SizedBox(height: TSizes.defaultSpace),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close dialog
                            },
                            child: Text('Close'),
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
      ),
    );
  }
}

class insuranceLoaders {
  static void openLoadingDialog(String text, String svgImage) {
    bool _isSwitched = false;
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                    decoration: BoxDecoration(
                      color: THelperFunctions.isDarkMode(Get.context!)
                          ? TColors.dark
                          : TColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        CpopupAppBar(
                          // showArrowColor: true,
                          leadingIcon: Icons.close,
                          leadingInPressed: () => Get.back(),
                          title: Text(
                            'Buy insurance plan',
                            style: Theme.of(Get.context!)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  fontSize: 15,
                                  fontFamily:
                                      GoogleFonts.merriweather().fontFamily,
                                ),
                          ),
                          texttile: '',
                        ),
                        const SizedBox(
                          height: TSizes.defaultSpace,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: TSizes.defaultSpaces),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Health Insurance',
                                textAlign: TextAlign.center,
                                style:
                                    Theme.of(Get.context!).textTheme.bodySmall,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  // Rounded corners
                                  border: Border.all(
                                    color: TColors.primary,
                                    // Change the color based on switch state
                                    width: 1.5,
                                  ),
                                ),
                                child: Text(
                                  'MAGNUM',
                                  style: Theme.of(Get.context!)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: TColors.primary,
                                        fontFamily: GoogleFonts.merriweather()
                                            .fontFamily,
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: TSizes.md,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: TSizes.defaultSpaces),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Premium',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  'N1,200,000.00',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: TSizes.sm,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Beneficiary',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  '6 people ',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Prem. Cover',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  'N4,000,000.00',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: TSizes.sm,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Coverarge',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodyMedium!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                ),
                                                Text(
                                                  '12 months',
                                                  style: Theme.of(Get.context!)
                                                      .textTheme
                                                      .bodySmall,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: TSizes.md,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: TSizes.md,
                                        vertical: TSizes.sm,
                                      ),
                                      decoration: BoxDecoration(
                                        // Rounded corners
                                        border: Border.all(
                                          color: TColors.grey,
                                          // Change the color based on switch state
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                'off',
                                                style: Theme.of(Get.context!)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(fontSize: 12),
                                              ),
                                              SizedBox(
                                                width: TSizes.xs,
                                              ),
                                              Material(
                                                child: Switch(
                                                  activeColor: TColors.primary,
                                                  // Color of the switch track when on
                                                  inactiveThumbColor:
                                                      TColors.primary,
                                                  // Color of the switch thumb when off
                                                  inactiveTrackColor:
                                                      TColors.white,

                                                  value: _isSwitched,
                                                  onChanged: (value) {
                                                    _isSwitched = value;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: TSizes.sm,
                                          ),
                                          Expanded(
                                            child: Text(
                                              'Turn on auto renewal',
                                              style: Theme.of(Get.context!)
                                                  .textTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: TSizes.sm,
                                          ),
                                          const Icon(
                                            Icons.info_outline_rounded,
                                            color: TColors.primaryYellow2,
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: TSizes.lg,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Where should we charge ?',
                                    style: Theme.of(Get.context!)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: TColors.darkerGrey,
                                          fontSize: 15,
                                          fontFamily: GoogleFonts.merriweather()
                                              .fontFamily,
                                        ),
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: (){
                                  Navigator.pop(Get.context!);
                                  successful();},
                                child: Card(
                                  color: TColors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  elevation: 3,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: TColors.white,
                                      borderRadius: BorderRadius.circular(5.0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(
                                            TSizes.defaultSpaces,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Icon(
                                                Icons
                                                    .account_balance_wallet_rounded,
                                                color: TColors.primary,
                                              ),
                                              Text('Wallet'),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            child: SvgPicture.asset(
                                          'images/cardwallet.svg',
                                          fit: BoxFit.cover,
                                          alignment: Alignment.center,
                                        ))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Card(
                                color: TColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                elevation: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: TColors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                          TSizes.defaultSpaces,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons
                                                  .account_balance_wallet_rounded,
                                              color: TColors.primary,
                                            ),
                                            Text('Wallet'),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: SvgPicture.asset(
                                        'images/cardcal.svg',

                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                color: TColors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                elevation: 3,
                                child: Container(
                                  decoration: BoxDecoration(
                                  color: TColors.white,
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(
                                          TSizes.defaultSpaces,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons
                                                  .account_balance_wallet_rounded,
                                              color: TColors.primary,
                                            ),
                                            Text('Wallet'),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: SvgPicture.asset(
                                        'images/cardwe.svg',

                                        fit: BoxFit.cover,
                                        alignment: Alignment.topCenter,
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.defaultSpace,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

  static void successful() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                    decoration: BoxDecoration(
                      color: THelperFunctions.isDarkMode(Get.context!)
                          ? TColors.dark
                          : TColors.white,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        CpopupAppBar(
                          // showArrowColor: true,
                          leadingIcon: Icons.close,
                          leadingInPressed: () => Get.back(),
                          texttile: '',
                        ),
                        const SizedBox(
                          height: TSizes.defaultSpace,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: TSizes.defaultSpaces),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: TSizes.spaceBtwSections),
                                child: Center(
                                    child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                          'images/successphone.svg',
                                          width: MediaQuery.of(Get.context!)
                                                  .size
                                                  .width *
                                              0.5),
                                      const SizedBox(
                                        height: TSizes.defaultSpace,
                                      ),

                                      Text(
                                        'Payment successful!',
                                        style: Theme.of(Get.context!)
                                            .textTheme
                                            .headlineSmall!
                                            .copyWith(
                                          color: TColors.darkerGrey,
                                          fontFamily:
                                          GoogleFonts.merriweather().fontFamily,
                                        ),
                                      ),
                                      Text(
                                        'Visit insurance dashboard to view ongoing policies',
                                        textAlign: TextAlign.center,
                                        style:
                                        Theme.of(Get.context!).textTheme.bodySmall,
                                      ),
                                      const SizedBox(
                                        height: TSizes.defaultSpace,
                                      ),
                                      SizedBox(
                                        width: double.infinity,
                                        child: OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                            backgroundColor: TColors.primary,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(TSizes
                                                  .borderRadiusMd), // Border radius
                                            ),
                                            side: const BorderSide(
                                                color: Colors.white,
                                                width: 1.0),
                                          ),
                                          child: Text(
                                            'Okay',
                                            style: Theme.of(Get.context!)
                                                .textTheme
                                                .bodyMedium!
                                                .apply(color: TColors.light),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: TSizes.defaultSpace / 4,
                                      ),
                                    ],
                                  ),
                                )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }
}

class healthPlan {
  static void openLoadingDialog(String text, String svgImage) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration: BoxDecoration(
                  color: THelperFunctions.isDarkMode(Get.context!)
                      ? TColors.dark
                      : TColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    CpopupAppBar(
                      // showArrowColor: true,
                      leadingIcon: Icons.close,
                      leadingInPressed: () => Get.back(),
                      texttile: '',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.defaultSpaces),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to Health Insurance',
                            style: Theme.of(Get.context!)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                              fontSize: 15,
                              fontFamily:
                              GoogleFonts.merriweather().fontFamily,
                            ),
                          ),
                          Text(
                            'Protecting your greatest wealth!',
                            textAlign: TextAlign.center,
                            style:
                            Theme.of(Get.context!).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Do you want to continue  with an HMO ?',
                                  style: Theme.of(Get.context!)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                    color: TColors.darkerGrey,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: SvgPicture.asset(
                                    'images/undraw_target_re_fi8j.svg',
                                    fit: BoxFit.contain,height: 150,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          Text(
                            'If yes, we would provide you with a list of vetted HMO’s available in your region',
                            style:
                            Theme.of(Get.context!).textTheme.bodySmall,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: (){
                                Navigator.pop(Get.context!);
                                mainPlan();
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: TColors.primary,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd), // Border radius
                              ),
                                side: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0),),
                              child: Text('Yes',
                                style: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: TColors.light),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace/4,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
                            child: SizedBox(
                              width: double.infinity,
                              child: OutlinedButton(
                                onPressed: (){
                                  Navigator.pop(Get.context!);
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: TColors.primarybutton3,shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      TSizes.borderRadiusMd), // Border radius
                                ),
                                  side: const BorderSide(
                                      color: Colors.white,
                                      width: 1.0),),
                                child: Text('No',
                                  style: Theme.of(Get.context!)
                                      .textTheme
                                      .bodyMedium!
                                      .apply(color: TColors.black),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  static void mainPlan() {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: TSizes.sm),
                decoration: BoxDecoration(
                  color: THelperFunctions.isDarkMode(Get.context!)
                      ? TColors.dark
                      : TColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    CpopupAppBar(
                      // showArrowColor: true,
                      leadingIcon: Icons.close,
                      leadingInPressed: () => Get.back(),
                      texttile: '',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: TSizes.defaultSpaces),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Welcome to Health Insurance',
                            style: Theme.of(Get.context!)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                              fontSize: 15,
                              fontFamily:
                              GoogleFonts.merriweather().fontFamily,
                            ),
                          ),
                          Text(
                            'Protecting your greatest wealth!',
                            textAlign: TextAlign.center,
                            style:
                            Theme.of(Get.context!).textTheme.bodySmall,
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Do you want a plan for you alone or with dependents ?',
                                  style: Theme.of(Get.context!)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                    color: TColors.darkerGrey,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                  child: SvgPicture.asset(
                                    'images/undraw_target_re_fi8j.svg',
                                    fit: BoxFit.contain,height: 150,
                                  ))
                            ],
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace,
                          ),
                          Row(
                            children: [
                              Text(
                                'Click on one that applies',
                                style:
                                Theme.of(Get.context!).textTheme.bodySmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: (){
                                Navigator.pop(Get.context!);
                                Get.to(insuranceHealthSingle());
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: TColors.primary,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd), // Border radius
                              ),
                                side: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0),),
                              child: Text('Single plan',
                                style: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: TColors.light),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: TSizes.defaultSpace/4,
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: (){
                                Navigator.pop(Get.context!);
                                Get.to(insuranceHealthMulti());
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: TColors.primarybutton3,shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    TSizes.borderRadiusMd), // Border radius
                              ),
                                side: const BorderSide(
                                    color: Colors.white,
                                    width: 1.0),),
                              child: Text('Multi plan',
                                style: Theme.of(Get.context!)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(color: TColors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: TSizes.defaultSpace,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}