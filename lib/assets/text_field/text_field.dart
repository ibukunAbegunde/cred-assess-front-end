import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cred_assess/assets/icon.dart';
import '../colors.dart';
import '../style.dart';

class CustomTextField extends TextFormField {
  CustomTextField({
    Key? key,
    FocusNode? focusNode,
    Function(String)? function,
    Function()? onTap,
    TextInputAction? textInputAction,
    bool enabled = true,
    bool readOnly = false,
    bool autocorrect = false,
    bool autoFocus = true,
    bool? obscure,
    Widget? prefix,
    Widget? suffix,
    TextEditingController? controller,
    double? fontSize,
    Color? textColor,
    int? minLines,
    int? maxLines,
    Iterable<String>? autofillHints,
    TextInputType type = TextInputType.text,
    String? hint,
    String? label,
    String? initialValue,
    ValueChanged<String>? onChanged,
  }) : super(
          initialValue: initialValue,
          key: key,
          autocorrect: autocorrect,
          focusNode: focusNode,
          onTap: onTap,
          autofillHints: autofillHints,
          onFieldSubmitted: function,
          textInputAction: textInputAction ?? TextInputAction.next,
          enabled: enabled,
          readOnly: readOnly,
          autofocus: autoFocus,
          textCapitalization: obscure != null
              ? TextCapitalization.none
              : TextCapitalization.sentences,
          controller: controller,
          obscureText: obscure ?? false,
          keyboardType: type,
          cursorColor: CustomColors.primaryBlue,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 12.h,
            ),
            isDense: true,
            enabled: enabled,
            // fillColor: CustomColors.white,
            // filled: true,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: const BorderSide(
                width: 2,
                color: CustomColors.primaryYellow2,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: BorderSide(
                width: 1,
                color: CustomColors.ash.withOpacity(0.5),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: const BorderSide(
                width: 1,
                color: CustomColors.ash,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: const BorderSide(
                width: 1,
                color: CustomColors.red,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(200),
              borderSide: const BorderSide(
                width: 2,
                color: CustomColors.primaryYellow2,
              ),
            ),
            hintText: hint,
            hintStyle: CustomTextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: CustomColors.ash,
            ),
            // labelText: label,
            // labelStyle: CustomTextStyle(
            //   fontWeight: FontWeight.w500,
            //   fontSize: 14,
            //   color: CustomColors.ash,
            // ),
            // floatingLabelStyle: CustomTextStyle(
            //   fontWeight: FontWeight.w600,
            //   fontSize: 12.w,
            //   color: CustomColors.lightBlue,
            // ),
            // helperText:
            //     obscure != null ? 'Password must be atleast 6 digits' : null,
            // helperStyle: CustomTextStyle(context,
            //   fontWeight: FontWeight.normal,
            //   fontSize: 12,
            //   color: SwirgeColors.primary,
            // ),
            prefixIcon: prefix == null
                ? null
                : Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 8.w,
                    ),
                    child: prefix,
                  ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 28.h,
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(
                left: 12.w,
                right: 16.w,
              ),
              child: suffix ??
                  (!enabled
                      ? CustomIcon(
                          icon: 'lock',
                          height: 16.h,
                        )
                      : suffix),
            ),
            suffixIconConstraints: BoxConstraints(
              maxHeight: 28.h,
            ),
          ),
          style: CustomTextStyle(
            fontSize: fontSize ?? 16,
            color: textColor ?? CustomColors.black,
          ),
          onChanged: onChanged,
          minLines: minLines ?? maxLines,
          maxLines: maxLines ?? 1,
          validator: (value) {
            if (obscure != null && value!.length < 6) {
              return 'Password length must be atleast 6';
            } else if (value == null || value.isEmpty) {
              return 'Input $label';
            }

            return null;
          },
        );
}
