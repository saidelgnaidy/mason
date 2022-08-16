import 'package:flutter/material.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';
import 'package:{{name}}/views/widgets/picker/address_result.dart';
import 'package:{{name}}/views/widgets/picker/map.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String get dummyNetImg =>
    'https://img.freepik.com/free-photo/smiling-woman-pink-shirt-sitting-relaxed-sofa-home-table-working-online-laptop-from-home_285396-9416.jpg?w=1800&t=st=1659523432~exp=1659524032~hmac=eea719fc636fb14680b51f322b6e9b22a735f635c9a22f8896e052cc29206a2e';

abstract class KHelper {
  static KHelperGetters of(BuildContext context) {
    return KHelperGetters(context);
  }

  /// Icons Data =================*
  static const IconData activity = Icons.show_chart_rounded;
  static const IconData list = Icons.list_rounded;
  static const IconData store = Icons.storefront_rounded;
  static const IconData add = Icons.add;
  static const IconData person = Icons.person;
  static const IconData check = Icons.check_circle;
  static const IconData cancel = Icons.cancel;
  static const IconData delete = Icons.delete;
  static const IconData chats = Icons.chat;
  static const IconData moreHoriz = Icons.more_horiz;
  static const IconData notifications = Icons.notifications;
  static const IconData expand = Icons.keyboard_arrow_down_rounded;
  static const IconData expandSided = Icons.keyboard_arrow_right_rounded;
  static const IconData phone = Icons.phone_android_rounded;
  static const IconData email = Icons.email_rounded;
  static const IconData location = Icons.location_pin;
  static const IconData branches = Icons.map_rounded;
  static const IconData payment = Icons.payment_rounded;
  static const IconData lang = Icons.language_rounded;
  static const IconData passworrd = Icons.key_rounded;
  static const IconData theme = Icons.dark_mode_rounded;
  static const IconData terms = Icons.file_copy_rounded;
  static const IconData privacyPolicy = Icons.privacy_tip_rounded;
  static const IconData help = Icons.help;
  static const IconData visibility = Icons.visibility;
  static const IconData visibilityOff = Icons.visibility_off;
  static const IconData logout = Icons.exit_to_app;
  static const IconData home = Icons.home;
  static const IconData money = Icons.attach_money;
  static const IconData chat = Icons.message;

  /// Constants =================*
  static const double btnRadius = 12.0;
  static const double cornerRadius = 8.0;
  static const double hPading = 12.0;
  static const double hScaffoldPadding = 30.0;
  static const double iconSize = 18.0;
  static const double iconSize2 = 15.0;

  static showSnackBar(String msg, {bool? isTop}) {
    Get.closeAllSnackbars();
    Get.snackbar(
      '',
      '',
      snackPosition: isTop ?? true ? SnackPosition.TOP : SnackPosition.BOTTOM,
      barBlur: 10.0,
      //backgroundColor: Colors.black.withOpacity(.6),
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      duration: const Duration(seconds: 6),
      padding: const EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 8),
      forwardAnimationCurve: Curves.decelerate,
      reverseAnimationCurve: Curves.decelerate,
      dismissDirection: DismissDirection.horizontal,
      //colorText: Colors.white,
      messageText: Text(
        msg,
        textAlign: TextAlign.center,
        // style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }

  static Future<AddressResult?> showMaps(BuildContext context) async {
    return await showGoogleMapLocationPicker(
        pinWidget: const Icon(Icons.location_pin, color: Colors.red, size: 40),
        pinColor: Colors.blue,
        context: context,
        addressPlaceHolder: 'move_the_map'.tr,
        addressTitle: 'single_address'.tr,
        apiKey: 'AIzaSyAp4ttaDamsEiqnoGzWP1ulqBJ656lv4yk',
        appBarTitle: "حدد موقع التوصيل".tr,
        confirmButtonColor: KColors.of(context).accentColor,
        confirmButtonText: "confirm",
        confirmButtonTextColor: Colors.white,
        country: "eg",
        language: "ar",
        searchHint: Tr.get.search_for_location,
        initialLocation: const LatLng(33.0515261234, 31.1952702387));
  }
}

class KHelperGetters {
  final BuildContext context;
  KHelperGetters(this.context);

  BoxDecoration get elevatedBox {
    return BoxDecoration(
      color: KColors.of(context).elevatedBox,
      borderRadius: BorderRadius.circular(KHelper.cornerRadius),
      boxShadow: [
        BoxShadow(blurRadius: 6.0, offset: const Offset(0, 3), color: KColors.of(context).shadow),
      ],
    );
  }

  BoxDecoration get outlineBorder {
    return BoxDecoration(borderRadius: BorderRadius.circular(KHelper.cornerRadius), border: Border.all(color: KColors.of(context).accentColor, width: 1));
  }

  BoxDecoration get freeShiping {
    return BoxDecoration(
      color: KColors.of(context).freeShiping,
      borderRadius: BorderRadius.circular(KHelper.cornerRadius),
      boxShadow: [
        BoxShadow(blurRadius: 6.0, offset: const Offset(0, 3), color: KColors.of(context).shadow),
      ],
    );
  }

  BoxDecoration get outlineCircle {
    return BoxDecoration(border: Border.all(color: KColors.of(context).accentColor, width: 1), shape: BoxShape.circle);
  }

  BoxDecoration circle(Color color) {
    return BoxDecoration(color: color, shape: BoxShape.circle);
  }

  DropdownMenuItem<T> dropdownItem<T>({required String itemText, required T value}) {
    return DropdownMenuItem<T>(
      value: value,
      child: Center(
        child: Text(
          itemText,
          style: KTextStyle.of(context).body,
        ),
      ),
    );
  }
}
