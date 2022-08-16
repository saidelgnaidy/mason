import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';

class KThemeData {
  BuildContext? context;
  KThemeData(this.context);

  static KThemeData of(BuildContext context) {
    return KThemeData(context);
  }

  SystemUiOverlayStyle get overlayStyle {
    return Theme.of(context!).brightness == Brightness.light ? _lightOverLay : _darkOverLay;
  }

  static ThemeData get light {
    return ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: KColors.backgroundL,
      appBarTheme: const AppBarTheme(
        color: KColors.backgroundL,
        systemOverlayStyle: _lightOverLay,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: KColors.iconL),
        iconTheme: IconThemeData(color: KColors.iconL),
      ),
      textTheme: _textTheme,
      shadowColor: KColors.shadowL,
      inputDecorationTheme: inputDecorationTheme(accentColor: KColors.accentColorL),
      iconTheme: const IconThemeData(color: KColors.iconL),
      elevatedButtonTheme: elevatedBtnTheme(shadow: KColors.shadowL, background: KColors.accentColorL),
      switchTheme: const SwitchThemeData(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: KColors.backgroundD,
      appBarTheme: const AppBarTheme(
        color: KColors.backgroundD,
        systemOverlayStyle: _darkOverLay,
        elevation: 0,
        actionsIconTheme: IconThemeData(color: KColors.iconD),
      ),
      textTheme: _textTheme,
      shadowColor: KColors.shadowD,
      inputDecorationTheme: inputDecorationTheme(accentColor: KColors.accentColorD),
      iconTheme: const IconThemeData(color: KColors.iconD),
      elevatedButtonTheme: elevatedBtnTheme(shadow: KColors.shadowD, background: KColors.accentColorD),
    );
  }

  static ElevatedButtonThemeData elevatedBtnTheme({required Color shadow, required Color background}) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        alignment: Alignment.center,
        shadowColor: MaterialStateProperty.all<Color>(shadow),
        elevation: MaterialStateProperty.all<double>(5.0),
        backgroundColor: MaterialStateProperty.all<Color>(background),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(KHelper.btnRadius),
          ),
        ),
      ),
    );
  }

  static InputDecorationTheme inputDecorationTheme({required Color accentColor}) {
    return InputDecorationTheme(
      border: outlineInputBorder(color: accentColor),
      disabledBorder: outlineInputBorder(color: accentColor),
      errorBorder: outlineInputBorder(color: Colors.red),
      focusedErrorBorder: outlineInputBorder(color: Colors.red),
      enabledBorder: outlineInputBorder(color: accentColor),
      focusedBorder: outlineInputBorder(color: Colors.grey),
    );
  }

  static InputDecoration inputDecoration(BuildContext context) => InputDecoration(
        border: outlineInputBorder(color: KColors.of(context).accentColor),
        disabledBorder: outlineInputBorder(color: KColors.of(context).accentColor),
        errorBorder: outlineInputBorder(color: Colors.red),
        focusedErrorBorder: outlineInputBorder(color: Colors.red),
        enabledBorder: outlineInputBorder(color: KColors.of(context).accentColor),
        focusedBorder: outlineInputBorder(color: KColors.of(context).accentColor),
      );

  static OutlineInputBorder outlineInputBorder({required Color color}) => OutlineInputBorder(
        borderSide: BorderSide(width: .75, color: color),
        borderRadius: BorderRadius.circular(KHelper.btnRadius),
      );

  static const SystemUiOverlayStyle _darkOverLay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.light,
  );

  static const SystemUiOverlayStyle _lightOverLay = SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarBrightness: Brightness.dark,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarDividerColor: Colors.transparent,
    systemNavigationBarIconBrightness: Brightness.dark,
  );
  static const TextStyle _textStyle = TextStyle(fontFamily: KTextStyle.fontFamily);

  static const TextTheme _textTheme = TextTheme(
    headline1: _textStyle,
    headline2: _textStyle,
    headline3: _textStyle,
    headline4: _textStyle,
    headline5: _textStyle,
    headline6: _textStyle,
    bodyText1: _textStyle,
    bodyText2: _textStyle,
    subtitle1: _textStyle,
    subtitle2: _textStyle,
    headlineLarge: _textStyle,
    button: _textStyle,
    caption: _textStyle,
    labelMedium: _textStyle,
    overline: _textStyle,
  );
}
