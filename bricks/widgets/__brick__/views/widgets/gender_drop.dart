import 'package:flutter/material.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/views/widgets/drop_down.dart';

class GendersDropdown extends StatelessWidget {
  final Function(KGenderModel?)? onChanged;
  final KGenderModel? value;
  const GendersDropdown({Key? key, this.onChanged, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KDropdownBtn<KGenderModel>(
      onChanged: onChanged,
      value: value,
      items: KGenderModel.genders.map((e) => KHelper.of(context).dropdownItem<KGenderModel>(itemText: e.gender, value: e)).toList(),
      hint: Tr.get.gender,
    );
  }
}

class KGenderModel {
  final String gender;
  final String slug;

  KGenderModel({required this.gender, required this.slug});

  static List<KGenderModel> genders = [
    KGenderModel(gender: Tr.get.female, slug: "female"),
    KGenderModel(gender: Tr.get.male, slug: "male"),
  ];
  static KGenderModel bySlug(String slug) {
    if (slug == 'male') {
      return genders.last;
    } else {
      return genders.first;
    }
  }
}
