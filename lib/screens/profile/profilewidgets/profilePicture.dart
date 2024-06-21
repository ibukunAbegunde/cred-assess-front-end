
import 'package:flutter/material.dart';
import 'package:foodie/comons/widgets/loaders/shimmer.dart';
import 'package:foodie/screens/mainscreens/main_screen_controller/user_controller.dart';
import 'package:foodie/screens/mainscreens/navigatescreens/profile/profilewidget/circular_image.dart';
import 'package:foodie/utils/constants/color.dart';
import 'package:foodie/utils/constants/image_strings.dart';
import 'package:foodie/utils/constants/sizes.dart';
import 'package:foodie/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class userProfilePicture extends StatelessWidget {
  const userProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(UserController());
    return Center(
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),),
            child: Stack(
              children: [
               Obx(() {
                 final networkImage = controller.user.value.profilePicture;
                 final image = networkImage.isNotEmpty ? networkImage : TImages.productImage2;
                 return controller.imageUploading.value ? TShimmerEffect(width: 120, height: 120, radius: 100,) : Center(child: TCircularImage(image: image, width:120, height: 120, isNetworkImage:networkImage.isNotEmpty));
               }),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                      onPressed: ()=> controller.uploadUserProfilePicture(),
                      icon: Container(
                    padding: EdgeInsets.all(TSizes.xs),
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.all(Radius.circular(100)),
                        color: TColors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(TSizes.xs),
                      child: Icon(Iconsax.camera, color: TColors.primary,),
                    ),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                if (controller.profileLoading.value) {
                  //Display a shimmer loader while user profile is beign loaded
                  return const TShimmerEffect(width: 80, height: 15);
                }else {
                  return Text(controller.user.value.fullName,
                      style: Theme.of(context).textTheme.headlineSmall!);}
              }),            ],
          )
        ],
      ),
    );
  }
}