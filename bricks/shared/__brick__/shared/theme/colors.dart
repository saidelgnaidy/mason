import 'package:flutter/material.dart';

abstract class KColors {
  static ColorsGetter of(BuildContext context) {
    return ColorsGetter(context);
  }

  //Light
  static const Color backgroundL = Color(0xfff8f8f8);
  static const Color elevatedBoxL = Color(0xFFffffff);
  static const Color navBarL = Color(0xFFF8F8F8);
  static const Color actionBTNL = Color(0xFF05B646);
  static const Color inActionBTNL = Color(0xFF8BD8D7);
  static const Color fabL = Color(0xFF45C0BE);
  static const Color iconL = Color(0xFF45C0BE);
  static const Color selectedIconL = Color(0xFF222134);
  static const Color errorL = Color(0xFFBE0202);
  static const Color shadowL = Color(0x20000000);
  static const Color cursorL = Color(0xFFBE0202);
  static const Color accentColorL = Color(0xff45C0BE);

  //Dark
  static const Color backgroundD = Color(0xff2F2E41);
  static const Color elevatedBoxD = Color(0xFF3C3A56);
  static const Color navBarD = Color(0xFF222134);
  static const Color actionBTND = Color(0xFF05B646);
  static const Color inActionBTND = Color(0xFF8BD8D7);
  static const Color fabD = Color(0xFF45C0BE);
  static const Color iconD = Color(0xFF45C0BE);
  static const Color selectedIconD = Colors.white;
  static const Color errorD = Color(0xFFD80000);
  static const Color shadowD = Color(0x20000000);
  static const Color cursorD = Color(0xFFBE0202);
  static const Color accentColorD = Color(0xff45C0BE);
}

class ColorsGetter extends KColors {
  final BuildContext? _context;
  ColorsGetter(this._context);

  //Getters
  Color get error {
    return Theme.of(_context!).brightness == Brightness.dark ? KColors.errorL : KColors.errorD;
  }

  Color get actionBTN {
    return Theme.of(_context!).brightness == Brightness.dark ? KColors.actionBTNL : KColors.actionBTND;
  }

  Color get freeShiping {
    return Theme.of(_context!).brightness == Brightness.dark ? KColors.inActionBTNL : KColors.inActionBTND;
  }

  Color get navBar {
    return Theme.of(_context!).brightness == Brightness.dark ? KColors.navBarD : KColors.navBarL;
  }

  Color get background {
    return Theme.of(_context!).brightness == Brightness.dark ? KColors.backgroundD : KColors.backgroundL;
  }

  Color get elevatedBox {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.elevatedBoxL : KColors.elevatedBoxD;
  }

  Color get shadow {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.shadowL : KColors.shadowD;
  }

  Color get cursor {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.cursorL : KColors.cursorD;
  }

  Color get reBackground {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.backgroundD : KColors.backgroundL;
  }

  Color get border {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.backgroundD.withOpacity(.2) : KColors.backgroundL.withOpacity(.2);
  }

  Color get trackColor {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.actionBTND : KColors.actionBTND;
  }

  Color get thumbColor {
    return Colors.white;
  }

  Color get activeIcons {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.iconL : KColors.iconD;
  }

  Color get selected {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.selectedIconL : KColors.selectedIconD;
  }

  Color get fabBackground {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.fabL : KColors.fabD;
  }

  Color get accentColor {
    return Theme.of(_context!).brightness == Brightness.light ? KColors.accentColorL : KColors.accentColorD;
  }
}
