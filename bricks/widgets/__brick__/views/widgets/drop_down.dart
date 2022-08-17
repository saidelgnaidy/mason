import 'package:flutter/material.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';
import 'package:get/get.dart';

class KDropdownBtn<T> extends StatelessWidget {
  final String hint;
  final T? value;
  final double? width;
  final Function(T?)? onChanged;
  final List<DropdownMenuItem<T>> items;

  const KDropdownBtn({Key? key, required this.hint, this.value, this.onChanged, required this.items, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? Get.width - 40,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: KColors.of(context).accentColor, width: 1),
        borderRadius: BorderRadius.circular(KHelper.btnRadius),
      ),
      child: DropdownButton<T>(
        value: value,
        hint: Text(
          hint,
          style: KTextStyle.of(context).hint,
        ),
        dropdownColor: KColors.of(context).elevatedBox,
        items: items,
        onChanged: onChanged,
        iconSize: 24,
        elevation: 16,
        style: KTextStyle.of(context).body2,
        isExpanded: true,
        underline: Container(height: 2, color: Colors.transparent),
      ),
    );
  }
}
