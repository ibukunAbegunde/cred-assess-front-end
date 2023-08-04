import 'package:flutter/material.dart';

import '../colors.dart';
import '../style.dart';
import 'obscure.dart';
import 'text_field.dart';

class LabelledTextField extends StatefulWidget {
  final String? initialValue;
  final String? label;
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final TextInputType type;
  final Iterable<String>? autofillHints;
  final TextInputAction? textInputAction;
  final Function(String)? function;
  final bool enabled;
  final bool readOnly;
  final bool autoFocus;
  final int? maxLines;
  final FocusNode? focusNode;
  final Function()? onTap;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  const LabelledTextField({
    Key? key,
    this.label,
    this.hint,
    this.prefix,
    this.controller,
    this.enabled = true,
    this.readOnly = false,
    this.autoFocus = true,
    this.type = TextInputType.text,
    this.maxLines,
    this.onTap,
    this.focusNode,
    this.autofillHints,
    this.function,
    this.textInputAction,
    this.onChanged,
    this.suffix,
    this.initialValue,
  }) : super(key: key);

  @override
  State<LabelledTextField> createState() => _LabelledTextFieldState();
}

class _LabelledTextFieldState extends State<LabelledTextField> {
  late FocusNode myFocusNode;
  bool? _obscure;

  @override
  void initState() {
    super.initState();

    _obscure =
        ((widget.hint ?? widget.label)?.toLowerCase().contains('password') ??
                false)
            ? true
            : null;
    if (widget.focusNode == null) {
      myFocusNode = FocusNode()
        ..addListener(() {
          setState(() {});
        });
    } else {
      widget.focusNode!.addListener(() {
        if (mounted) {
          setState(() {});
        }
      });
    }
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    if (widget.focusNode == null) {
      myFocusNode.dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: CustomTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: CustomColors.black,
            ),
          ),
        if (widget.label != null)
          const SizedBox(
            height: 8,
          ),
        CustomTextField(
          initialValue: widget.initialValue,
          textInputAction: widget.textInputAction,
          function: widget.function,
          autofillHints: widget.autofillHints,
          onTap: widget.onTap,
          type: widget.type,
          controller: widget.controller,
          obscure: _obscure,
          hint: widget.hint ?? widget.label,
          prefix: widget.prefix,
          focusNode: (widget.focusNode ?? myFocusNode),
          enabled: widget.enabled,
          readOnly: widget.readOnly,
          autoFocus: widget.autoFocus,
          maxLines: widget.maxLines,
          onChanged: widget.onChanged,
          suffix: widget.suffix == null && _obscure == null
              ? null
              : widget.suffix ??
                  InkWell(
                    onTap: () {
                      setState(() {
                        _obscure = !_obscure!;
                      });
                    },
                    child: Obscure(
                      obscure: _obscure!,
                    ),
                  ),
        ),
      ],
    );
  }
}
