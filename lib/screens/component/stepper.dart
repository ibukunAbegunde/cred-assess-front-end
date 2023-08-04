import 'package:flutter/material.dart';

class StepperComponent extends StatelessWidget {
  // index describe the position of our bubble
  int index;
  //currentIndex is index that is gonna change on Tap
  int currentIndex;
  //onTap CallBack
  VoidCallback onTap;

  bool isLast;
  StepperComponent({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.onTap,
    this.isLast=false,
  });

  @override
  Widget build(BuildContext context) {

    //now let's remove the ligne at the end of the row but also we need to remove unnecessary padding thus we need to remove the expanded
    //widget
    return isLast?
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            //this is the bubble
            GestureDetector(
              onTap: onTap,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: index==currentIndex?Colors.orange:Colors.transparent,
                  border: Border.all(color: currentIndex>=index?Colors.orange: Colors.white, width: 2),
                ),
              ),
            ),
            //this the ligne
            Container(
              height: 4,
              //why index+1 we want to turn the ligne orange that precede the active bubble
              color: currentIndex>=index+1?Colors.orange:Colors.white38,
            ),
          ],
        ),

      ],
    )
        :Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //this is the bubble
              GestureDetector(
                onTap: onTap,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: index==currentIndex?Colors.orange:Colors.transparent,
                    border: Border.all(color: currentIndex>=index?Colors.orange: Colors.white, width: 2),
                  ),
                ),
              ),
              //this the ligne
              Expanded(
                  child: Container(
                    height:4,
                    //why index+1 we want to turn the ligne orange that precede the active bubble
                    color: currentIndex>=index+1?Colors.orange:Colors.white30,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}