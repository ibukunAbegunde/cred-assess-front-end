import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';
import '../icon.dart';
import '../style.dart';

class CustomButton extends TextButton {
  CustomButton({
    Key? key,
    Function()? onPressed,
    required String text,
    bool loading = false,
    bool outlined = false,
    bool destructive = false,
    bool secondary = false,
    // bool dark = false,
    bool mini = false,
    String? prefixIcon,
    String? suffixIcon,
    Color? color,
    Color? textColor,
    GlobalKey<FormState>? formKey,
    required BuildContext context,
  }) : super(
          key: key,
          child: SizedBox(
            height:30,
            child: Center(
              child: loading
                  ? SizedBox(
                      width: 24,
                      child: CircularProgressIndicator.adaptive(
                        strokeWidth: 1.4,
                        valueColor: AlwaysStoppedAnimation(
                          secondary || outlined
                              ? CustomColors.primaryBlue
                              : CustomColors.darkpurple,
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (prefixIcon != null)
                          CustomIcon(
                            height: 20,
                            icon: prefixIcon,
                          ),
                        if (prefixIcon != null)
                          SizedBox(
                            width: 8,
                          ),
                        Text(
                          text,
                          style: CustomTextStyle(
                            color: textColor ??
                                (outlined
                                    ? destructive
                                        ? CustomColors.primaryBlue
                                        : CustomColors.primaryBlue
                                    : secondary
                                        ? CustomColors.primaryBlue
                                        : CustomColors.white),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (suffixIcon != null)
                          SizedBox(
                            width: 8,
                          ),
                        if (suffixIcon != null)
                          CustomIcon(
                            height: 20,
                            icon: suffixIcon,
                          ),
                      ],
                    ),
            ),
          ),
          onPressed: loading
              ? null
              : onPressed == null
                  ? null
                  : () {
                      if (formKey?.currentState?.validate() ?? true) {
                        onPressed();
                      }
                    },
          style: ButtonStyle(
            elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
                return 0;
              },
            ),
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return CustomColors.primaryBlue.withOpacity(0.2);
                } else if (states.contains(MaterialState.pressed)) {
                  return outlined
                      ? CustomColors.primaryBlue.withOpacity(0.05)
                      : destructive
                          ? CustomColors.darkRed
                          : secondary
                              ? CustomColors.primaryBlue
                              : CustomColors.primaryBlue;
                }
                return outlined
                    ? CustomColors.white
                    : color ??
                        (destructive
                            ? CustomColors.primaryYellow2
                            : secondary
                                ? CustomColors.darkpurple
                                : CustomColors.primaryBlue);
              },
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                if (states.contains(MaterialState.disabled)) {
                  return CustomColors.primaryBlue.withOpacity(0.2);
                } else if (states.contains(MaterialState.pressed)) {
                  return outlined
                      ? CustomColors.primaryBlue.withOpacity(0.05)
                      : destructive
                          ? CustomColors.darkRed
                          : secondary
                              ? CustomColors.primaryBlue
                              : CustomColors.primaryBlue;
                }
                return outlined
                    ? CustomColors.darkpurple
                    : color ??
                        (destructive
                            ? CustomColors.primaryYellow2
                            : secondary
                                ? CustomColors.darkpurple
                                : CustomColors.primaryBlue);
              },
            ),
            padding: MaterialStateProperty.resolveWith(
              (states) {
                return EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                );
              },
            ),
            alignment: Alignment.center,
            // elevation: MaterialStateProperty<double>().,
            shape: MaterialStateProperty.resolveWith(
              (states) {
                return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: outlined
                      ? BorderSide(
                          color: color ??
                              (destructive
                                      ? CustomColors.primaryYellow2
                                      : CustomColors.primaryBlue)
                                  .withOpacity(
                                      states.contains(MaterialState.pressed)
                                          ? 0
                                          : 1),
                        )
                      : BorderSide.none,
                );
              },
            ),
          ),
        );
}
