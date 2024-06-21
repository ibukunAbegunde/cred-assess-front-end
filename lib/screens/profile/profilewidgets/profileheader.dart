import 'package:flutter/material.dart';
import 'package:foodie/data/repositories/authentication/authentication_repository.dart';
import 'package:foodie/screens/mainscreens/main_screen_controller/user_controller.dart';
import 'package:foodie/screens/mainscreens/navigatescreens/profile/address.dart';
import 'package:foodie/screens/mainscreens/navigatescreens/profile/edit_profile.dart';
import 'package:foodie/screens/mainscreens/navigatescreens/profile/profilewidget/more_list_option.dart';
import 'package:foodie/utils/constants/color.dart';
import 'package:foodie/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProfileHeader extends StatelessWidget {
  const TProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Container(
      child: Column(
        children: [
          /// -- Personal Profile
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: TSizes.spaceBtwItems/1.2,
                horizontal: TSizes.spaceBtwItems),
            color: TColors.grey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Personal Info'),

              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              children: [
                TMoreoptionList(
                  iconData: Iconsax.user,
                  title: 'Profile Details',
                  onpressed: ()=>Get.to(()=> const editProfile()),
                ),
                TMoreoptionListup(
                  iconData: Iconsax.link_square,
                  title: 'My Referral Code',
                  surfixIcon: Iconsax.copy,
                  subTitle: 'LGGSNMGYR327',
                ),
                TMoreoptionList(
                  iconData: Iconsax.location,
                  title: 'My Addresses',
                  onpressed:()=>Get.to(()=> const UserAddressScreen()),
                ),
              ],
            ),
          ),

          /// -- More Details
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: TSizes.spaceBtwItems/1.2,
                horizontal: TSizes.spaceBtwItems),
            color: TColors.grey,
            child: const Row(
              children: [Text('More')],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
            child: Column(
              children: [
                TMoreoptionList(
                  iconData: Iconsax.message_question,
                  title: 'FAQs',
                  onpressed: (){},
                ),
                TMoreoptionList(
                  iconData: Iconsax.medal_star,
                  title: 'Legal',
                  onpressed: (){},
                ),
                TMoreoptionList(
                  iconData: Iconsax.info_circle,
                  title: 'Get Help',
                  onpressed: (){},
                ),
                TMoreoptionList(
                  iconData: Iconsax.logout,
                  title: 'Sign Out',
                  onpressed: ()=>AuthenticationRepository.instance.logout(),
                ),
                TMoreoptionList(
                  iconData: Iconsax.profile_delete,
                  title: 'Delete Account',
                  iconstate: false,
                  onpressed: ()=> controller.deleteAccountWarningPopup(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
