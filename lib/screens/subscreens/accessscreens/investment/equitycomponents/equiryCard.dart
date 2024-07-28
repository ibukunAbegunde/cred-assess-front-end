import 'package:flutter/material.dart';
import 'package:cred_assess/utils/constants/color.dart';
import 'package:cred_assess/utils/constants/sizes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class TinsuranceCardList extends StatelessWidget {
  const TinsuranceCardList({
    super.key,
    required this.iconData,
    this.surfixIcon = Iconsax.arrow_right_3,
    required this.title,
    this.iconstate = true,
    required this.onpressed,
    required this.titlenumber,
    required this.amount,
    required this.rating,
    required this.reviews,
  });

  final IconData iconData;
  final IconData surfixIcon;
  final String title, titlenumber, amount, rating, reviews;
  final bool iconstate;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
            border: Border.all(
              color: TColors.grey, // Change the color based on switch state
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: TSizes.spaceBtwItems,
                      top: TSizes.spaceBtwItems / 2,
                      bottom: TSizes.spaceBtwItems / 2),
                  child: Row(
                    children: [
                      Container(
                          padding:
                              const EdgeInsets.all(TSizes.spaceBtwItems / 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            // Rounded corners
                            border: Border.all(
                              color: TColors.grey,
                              // Change the color based on switch state
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: titlenumber,
                                    ),
                                    WidgetSpan(
                                      child: Transform.translate(
                                        offset: const Offset(0, -9),
                                        // Adjust the offset as needed
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Text(
                                            '+',
                                            textScaleFactor: 0.7,
                                            // Adjust the scale factor as needed
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: TColors.primary),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                'Dependants',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 7),
                              ),
                            ],
                          )),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      fontSize: 15,
                                      fontFamily:
                                          GoogleFonts.merriweather().fontFamily,
                                    ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: TColors.primaryYellow2,
                                  ),
                                  Text(
                                    rating,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    reviews,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(TSizes.spaceBtwItems / 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // Rounded corners
                          border: Border.all(
                            color: TColors.grey,
                            // Change the color based on switch state
                            width: 1.0,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                      text: "\$$amount",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith()),
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(0, -9),
                                      // Adjust the offset as needed
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text('/annum',
                                            textScaleFactor: 0.7,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 8)),
                                      ),
                                    ),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Icon(
                  Icons.bookmark_border,
                  size: 20,
                  color: TColors.primaryYellow2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///-----------------------------------------
///car insurance card
///----------------------------------------
class carInsuranceCardList extends StatelessWidget {
  const carInsuranceCardList({
    super.key,
    required this.iconData,
    this.surfixIcon = Iconsax.arrow_right_3,
    required this.title,
    this.iconstate = true,
    required this.onpressed,
    required this.imageName,
    required this.amount,
    required this.rating,
    required this.reviews,
  });

  final IconData iconData;
  final IconData surfixIcon;
  final String title, imageName, amount, rating, reviews;
  final bool iconstate;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), // Rounded corners
            border: Border.all(
              color: TColors.grey, // Change the color based on switch state
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: TSizes.spaceBtwItems,
                      top: TSizes.spaceBtwItems / 2,
                      bottom: TSizes.spaceBtwItems / 2),
                  child: Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            // Rounded corners
                            border: Border.all(
                              color: TColors.grey,
                              // Change the color based on switch state
                              width: 1.0,
                            ),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                imageName,
                              ))),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                title,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleSmall!
                                    .copyWith(
                                      fontSize: 15,
                                      fontFamily:
                                          GoogleFonts.merriweather().fontFamily,
                                    ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: TColors.primaryYellow2,
                                  ),
                                  Text(
                                    rating,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    reviews,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(TSizes.spaceBtwItems / 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          // Rounded corners
                          border: Border.all(
                            color: TColors.grey,
                            // Change the color based on switch state
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                      text: amount,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith()),
                                  TextSpan(
                                      text: ' of',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w800,
                                              fontSize: 8)),
                                ],
                              ),
                            ),
                            const Divider(
                              height: 0,
                              thickness: 0.5,
                              color: TColors.grey,
                            ),
                            Text("Car Value",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: const Icon(
                  Icons.bookmark_border,
                  size: 20,
                  color: TColors.primaryYellow2,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
