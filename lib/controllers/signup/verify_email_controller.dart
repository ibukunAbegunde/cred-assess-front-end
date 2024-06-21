import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:foodie/comons/widgets/success_screen/success_screen.dart';
import 'package:foodie/data/repositories/authentication/authentication_repository.dart';
import 'package:foodie/utils/constants/image_strings.dart';
import 'package:foodie/utils/constants/text_strings.dart';
import 'package:foodie/utils/popups/loader.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController{
  static VerifyEmailController get instance => Get.find();

  ///send Email whenever Verify Screen appears abd set timer for auto redirect.
 @override
  void onInit(){
   sendEmailVerification();
   super.onInit();
 }

 ///send Email Verification link
 sendEmailVerification() async {
  try{
   await AuthenticationRepository.instance.sendEmailVerification();
   TLoaders.successSnackBar(title: 'Email Sent', message: 'Please Check your inbox and verify your email.');
  }catch(e){
   TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
  }
 }

 ///Timer to automatically redirect on Email Vrification
 setTimerForAutoRedirect(){
  Timer.periodic(const Duration(seconds: 1), (timer) async{
   await FirebaseAuth.instance.currentUser;
   final user = FirebaseAuth.instance.currentUser;
   if(user?.emailVerified ?? false){
    timer.cancel();
    Get.off(()=>SuccessScreen(image: TImages.successfullyRegisterAnimation, title: TTexts.yourAccountCreated, subTitle: TTexts.yourAccountCreadtedSubTitle, onPressed: ()=>AuthenticationRepository.instance.screenRedirect()));
   }
  });
 }
 
 
 ///manually check if email verified
 checkEmailVerificationStatus() async{
  final currentUser = FirebaseAuth.instance.currentUser;
  if(currentUser != null && currentUser.emailVerified){
   Get.off(()=>SuccessScreen(image: TImages.successfullyRegisterAnimation, title: TTexts.yourAccountCreated, subTitle: TTexts.yourAccountCreadtedSubTitle, onPressed: ()=>AuthenticationRepository.instance.screenRedirect()));
  }
}
}