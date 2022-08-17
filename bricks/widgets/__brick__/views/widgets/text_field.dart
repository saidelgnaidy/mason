import 'package:flutter/material.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';

class KTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Widget? suffixIcon, prefixIcon;
  final String? hintText, errorText;
  final bool autofocus, enabled;
  final double? kWidth, height;
  final int? maxLines;

  final bool obscureText;

  final void Function()? onTap;

  const KTextFormField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.hintText,
    this.onTap,
    this.errorText,
    this.keyboardType,
    this.onChanged,
    this.autofocus = false,
    this.prefixIcon,
    this.enabled = true,
    this.kWidth,
    this.height,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        keyboardAppearance: Theme.of(context).brightness,
        keyboardType: keyboardType,
        controller: controller,
        autofocus: autofocus,
        enabled: enabled,
        onTap: onTap,
        cursorColor: KColors.of(context).cursor,
        validator: validator,
        onChanged: onChanged,
        obscureText: obscureText,
        maxLines: maxLines ?? 1,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: KTextStyle.of(context).hint,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          errorStyle: KTextStyle.of(context).error,
          errorText: errorText,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
