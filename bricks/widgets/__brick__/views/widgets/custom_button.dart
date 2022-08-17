import 'package:flutter/material.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';
import 'package:get/get.dart';

class CustomBtn extends StatelessWidget {
  final String text;
  final String? image;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final void Function() onChange;
  final Color? backgroundColor;
  final double? elevation;

  const CustomBtn({
    Key? key,
    required this.text,
    this.height,
    this.width,
    this.elevation,
    this.image,
    this.textStyle,
    required this.onChange,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: height ?? 45,
      child: RawMaterialButton(
        onPressed: onChange,
        fillColor: KColors.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KHelper.btnRadius)),
        elevation: 0,
        child: Text(
          text,
          style: KTextStyle.of(context).btntitle,
        ),
      ),
    );
  }
}

class KButton extends StatelessWidget {
  const KButton({super.key, required this.title, required this.onPressed, this.width, this.hieght});

  final String title;
  final Function() onPressed;
  final double? width, hieght;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width,
      height: hieght ?? 45,
      child: RawMaterialButton(
        onPressed: onPressed,
        fillColor: KColors.of(context).accentColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(KHelper.btnRadius)),
        elevation: 0,
        child: Text(
          title,
          style: KTextStyle.of(context).btntitle,
        ),
      ),
    );
  }
}
