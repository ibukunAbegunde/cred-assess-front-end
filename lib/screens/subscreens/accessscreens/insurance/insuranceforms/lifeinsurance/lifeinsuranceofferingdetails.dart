import 'package:cred_assess/assets/appbar.dart';
import 'package:cred_assess/controllers/user_controller.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insurancecomponents/insurancecard.dart';
import 'package:cred_assess/screens/subscreens/accessscreens/insurance/insurancecomponents/popups.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class insuranceOfferingDetails extends StatelessWidget {
  String dropdownValue = 'USD';
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColors.white,
        automaticallyImplyLeading: false,
        leadingWidth: 80,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Row(
              children: [
                Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
                Text(
                  'Back',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: 16,
                      ),
                )
              ],
            )),
        title: Center(
          child: Text(
            'Health Insurance',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 14,
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
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpaces),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: TColors.primary,
                      borderRadius:
                          BorderRadius.circular(10.0), // Rounded corners
                    ),
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        SizedBox(height: 8.0),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MAGNUM',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: TColors.white,
                                          fontSize: 15,
                                          fontFamily: GoogleFonts.merriweather()
                                              .fontFamily,
                                        ),
                                  ),
                                  Text(
                                    'Health insurance',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: TColors.white,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(TSizes.md),
                                    child: Image.asset(
                                      'images/Logo.png',
                                      color: TColors.white,
                                      width: 80,
                                    ),
                                  )
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
                        const Divider(
                          height: 0,
                          thickness: 0.5,
                          color: TColors.grey,
                        ),
                        IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Premium',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: TColors.white,
                                                fontWeight: FontWeight.w800,
                                                fontSize: 10)),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                              text: "\$1.2m",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge!
                                                  .copyWith(
                                                      color: TColors.white,
                                                      fontSize: 23)),
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(0, 0),
                                              // Adjust the offset as needed
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Text('/annum',
                                                    textScaleFactor: 0.7,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                            color:
                                                                TColors.white,
                                                            fontWeight:
                                                                FontWeight.w800,
                                                            fontSize: 10)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4.0),
                                child: VerticalDivider(
                                  color: Colors.grey,
                                  thickness: 1,
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: TColors.primaryYellow2,
                                    ),
                                    Text(
                                      '5',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: TColors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20),
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '(23 reviews)',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              color: TColors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
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
                    Row(
                      children: [
                        Text(
                          'Benefit & Services',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 15,
                                fontFamily:
                                    GoogleFonts.merriweather().fontFamily,
                              ),
                        ),
                        SizedBox(width: 4,),
                        Icon(Icons.medical_services_outlined, color: TColors.darkerGrey,),
                      ],
                    ),

                    /// -- More Details

                    Column(
                      children: [
                        healthcard(iconData: Icons.medical_services_outlined, title: 'Extensive medical service range', subtitle: 'Discover peace of mind with our comprehensive health insurance package, offering an extensive range of medical services to cater to your every need. ',),
                        healthcard(iconData: Icons.directions_run_rounded, title: 'Wellness programs & incentives', subtitle: 'Invest in your well-being with our health insurance plan, designed to support your journey to a healthier, happier life.',),
                        healthcard(iconData: Icons.phone_android_rounded, title: 'Tele-medical services', subtitle: 'Experience the future of healthcare with our innovative tele-medical services, bringing expert medical care right to your fingertips',),
                        healthcard(iconData: Icons.medical_services_outlined, title: 'Preferred provider organization', subtitle: 'Gain access to a network of your preferred top-notch healthcare providers and facilities.',),
                        healthcard(iconData: Icons.groups, title: 'Up to 5 dependents allowed', subtitle: 'Put your family\'s health first with our health insurance plan that offers coverage for up to 5 dependents',),
                        const SizedBox(
                          height: TSizes.spaceBtwSections / 2,
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1,
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections / 2,
                        ),
                        Row(
                          children: [
                            Text(
                              'Benefit & Services',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                fontSize: 15,
                                fontFamily:
                                GoogleFonts.merriweather().fontFamily,
                              ),
                            ),
                            SizedBox(width: 4,),
                            Icon(Icons.medical_services_outlined, color: TColors.darkerGrey,),
                          ],
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections / 3,
                        ),
                        Container(
                          padding: const EdgeInsets.all(TSizes.spaceBtwItems/2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0), // Rounded corners
                            border: Border.all(
                              color:TColors.grey, // Change the color based on switch state
                              width: 1.0,
                            ),
                          ),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // 2 pictures per row
                              mainAxisSpacing: 8.0,
                              crossAxisSpacing: 8.0,
                              childAspectRatio: 1.0, // Square aspect ratio
                            ),
                            itemCount: 6, // Number of pictures
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                padding: const EdgeInsets.all(TSizes.spaceBtwItems/2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0), // Rounded corners
                                  border: Border.all(
                                    color:TColors.grey, // Change the color based on switch state
                                    width: 1.0,
                                  ),
                                ),
                                child: Image.asset(
                                  'images/new$index.png', // Change to your image assets
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections /2,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "Important Disclaimer: ",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                    fontWeight: FontWeight.bold,
                                      fontSize: 12)),
                              TextSpan(
                                  text: "It is important to note that health insurance plans offered by Cred Access are subject to regulation and oversight by the National Health Insurance Scheme (NHIS) of Nigeria. The NHIS is the primary regulatory authority responsible for establishing standards, guidelines, and regulations governing the........",
                                style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!.copyWith(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 12),),
                              TextSpan(
                                  text: "more",
                                  style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!.copyWith(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 12),),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
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
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onPressed: () {
                            print("Buy Plan");
                            insuranceLoaders.openLoadingDialog('Processing your order', 'images/undraw_survey_05s5.svg');
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Icon(Icons.shopping_bag_outlined, color: TColors.white,),
                              Text('Buy Plan'),
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
      ),
    );
  }
}

class healthcard extends StatelessWidget {
  const healthcard({
    super.key, required this.iconData, required this.title, required this.subtitle,
  });
final IconData iconData;
final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: TSizes.spaceBtwItems),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(iconData, color: TColors.darkerGrey,),
          SizedBox(width: 4,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                ),
                SizedBox(height: 4,),
                Text(subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!.copyWith(fontFamily: GoogleFonts.poppins().fontFamily, fontSize: 12),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
