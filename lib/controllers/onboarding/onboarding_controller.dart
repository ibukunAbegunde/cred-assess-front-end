import 'package:flutter/material.dart';
import 'package:foodie/screens/authentication/screens/login/loginScreen.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  ///variables
final pageController = PageController();
Rx<int> currentPageIndex = 0.obs;

///update Current Index when Page Scrolls
 void updatePageIndicator(index) => currentPageIndex.value = index;

 /// jump to the specific dot selected page
void dotNavigationClick(index){
  currentPageIndex.value = index;
  pageController.jumpTo(index);
}

///update current Index & jump to next page
void nextPage(){
  if(currentPageIndex.value ==2){
    final storage = GetStorage();
    storage.write('IsFirstTime', false);

    Get.offAll(const loginScreen());

  }else{
    int page = currentPageIndex.value + 1;
    pageController.jumpToPage(page);
  }

  }

///Update Current Index & jump to the last Page
void skipPage(){
  currentPageIndex.value =2;
  pageController.jumpToPage(2);
}
}