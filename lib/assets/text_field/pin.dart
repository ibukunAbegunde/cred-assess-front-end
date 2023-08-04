// import 'dart:developer' as dev;
// import 'package:flutter/material.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class PINField extends StatelessWidget {
//   const PINField({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return PinCodeTextField(
//       appContext: context,
//       length: 4,
//       obscureText: true,
//       animationType: AnimationType.fade,
//       pinTheme: PinTheme(
//         shape: PinCodeFieldShape.box,
//         borderRadius: BorderRadius.circular(10),
//         borderWidth: 1,
//         fieldHeight: 60,
//         fieldWidth: 60,
//         activeFillColor: Colors.white,
//         inactiveFillColor: Colors.white,
//         activeColor: Colors.grey,
//         inactiveColor: Colors.grey,
//         selectedColor: Colors.blueAccent,
//         selectedFillColor: Colors.white,
//       ),
//       animationDuration: const Duration(milliseconds: 300),
//       backgroundColor: Colors.transparent,
//       enableActiveFill: true,
//       onCompleted: (v) {
//         dev.log("Completed");
//       },
//       onChanged: (value) {
//         dev.log(value);
//       },
//     );
//   }
// }
