import 'package:flutter/foundation.dart';

class SettingsModel {
  bool? success;
  String? status;
  String? message;
  List<SettingsData>? data;

  SettingsModel({this.success, this.status, this.message, this.data});

  SettingsModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <SettingsData>[];
      json['data'].forEach((v) {
        data!.add(SettingsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['success'] = success;
    data['status'] = status;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsModel && other.success == success && other.status == status && other.message == message && listEquals(other.data, data);
  }

  @override
  int get hashCode {
    return success.hashCode ^ status.hashCode ^ message.hashCode ^ data.hashCode;
  }
}

class SettingsData {
  int? id;
  SettingsLogo? logo;
  String? name;
  String? defaultColor;
  SettingsIntroScreen? introScreen;
  SettingsDefaultLanguage? defaultLanguage;
  SettingsTitle? termsAndConditions;
  SettingsTitle? privacyPolicy;
  SettingsTitle? shippingPolicy;
  SettingsTitle? refundPolicy;
  SettingsTitle? slug;
  String? appVersion;
  bool? isLock;

  SettingsData({
    this.id,
    this.logo,
    this.name,
    this.defaultColor,
    this.introScreen,
    this.defaultLanguage,
    this.termsAndConditions,
    this.privacyPolicy,
    this.shippingPolicy,
    this.refundPolicy,
    this.slug,
    this.appVersion,
    this.isLock,
  });

  SettingsData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    logo = json['logo'] != null ? SettingsLogo.fromJson(json['logo']) : null;
    name = json['name'];
    defaultColor = json['default_color'];
    introScreen = json['intro_screen'] != null ? SettingsIntroScreen.fromJson(json['intro_screen']) : null;
    defaultLanguage = json['default_language'] != null ? SettingsDefaultLanguage.fromJson(json['default_language']) : null;
    termsAndConditions = json['terms_and_conditions'] != null ? SettingsTitle.fromJson(json['terms_and_conditions']) : null;
    privacyPolicy = json['privacy_policy'] != null ? SettingsTitle.fromJson(json['privacy_policy']) : null;
    shippingPolicy = json['shipping_policy'] != null ? SettingsTitle.fromJson(json['shipping_policy']) : null;
    refundPolicy = json['refund_policy'] != null ? SettingsTitle.fromJson(json['refund_policy']) : null;
    slug = json['slug'] != null ? SettingsTitle.fromJson(json['slug']) : null;
    appVersion = json['app_version'];
    isLock = json['is_lock'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    data['name'] = name;
    data['default_color'] = defaultColor;
    if (introScreen != null) {
      data['intro_screen'] = introScreen!.toJson();
    }
    if (defaultLanguage != null) {
      data['default_language'] = defaultLanguage!.toJson();
    }
    if (termsAndConditions != null) {
      data['terms_and_conditions'] = termsAndConditions!.toJson();
    }
    if (privacyPolicy != null) {
      data['privacy_policy'] = privacyPolicy!.toJson();
    }
    if (shippingPolicy != null) {
      data['shipping_policy'] = shippingPolicy!.toJson();
    }
    if (refundPolicy != null) {
      data['refund_policy'] = refundPolicy!.toJson();
    }
    if (slug != null) {
      data['slug'] = slug!.toJson();
    }
    data['app_version'] = appVersion;
    data['is_lock'] = isLock;
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsData &&
        other.id == id &&
        other.logo == logo &&
        other.name == name &&
        other.defaultColor == defaultColor &&
        other.introScreen == introScreen &&
        other.defaultLanguage == defaultLanguage &&
        other.termsAndConditions == termsAndConditions &&
        other.privacyPolicy == privacyPolicy &&
        other.shippingPolicy == shippingPolicy &&
        other.refundPolicy == refundPolicy &&
        other.slug == slug &&
        other.appVersion == appVersion &&
        other.isLock == isLock;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        logo.hashCode ^
        name.hashCode ^
        defaultColor.hashCode ^
        introScreen.hashCode ^
        defaultLanguage.hashCode ^
        termsAndConditions.hashCode ^
        privacyPolicy.hashCode ^
        shippingPolicy.hashCode ^
        refundPolicy.hashCode ^
        slug.hashCode ^
        appVersion.hashCode ^
        isLock.hashCode;
  }
}

class SettingsLogo {
  String? s16px;
  String? s32px;
  String? s64px;
  String? s128px;
  String? s256px;
  String? s512px;

  SettingsLogo({this.s16px, this.s32px, this.s64px, this.s128px, this.s256px, this.s512px});

  SettingsLogo.fromJson(Map<String, dynamic> json) {
    s16px = json['16px'];
    s32px = json['32px'];
    s64px = json['64px'];
    s128px = json['128px'];
    s256px = json['256px'];
    s512px = json['512px'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['16px'] = s16px;
    data['32px'] = s32px;
    data['64px'] = s64px;
    data['128px'] = s128px;
    data['256px'] = s256px;
    data['512px'] = s512px;
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsLogo &&
        other.s16px == s16px &&
        other.s32px == s32px &&
        other.s64px == s64px &&
        other.s128px == s128px &&
        other.s256px == s256px &&
        other.s512px == s512px;
  }

  @override
  int get hashCode {
    return s16px.hashCode ^ s32px.hashCode ^ s64px.hashCode ^ s128px.hashCode ^ s256px.hashCode ^ s512px.hashCode;
  }
}

class SettingsIntroScreen {
  SettingsScreen? screen;
  SettingsScreen? screen0;

  SettingsIntroScreen({this.screen, this.screen0});

  SettingsIntroScreen.fromJson(Map<String, dynamic> json) {
    screen = json['screen'] != null ? SettingsScreen.fromJson(json['screen']) : null;
    screen0 = json['screen0'] != null ? SettingsScreen.fromJson(json['screen0']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (screen != null) {
      data['screen'] = screen!.toJson();
    }
    if (screen0 != null) {
      data['screen0'] = screen0!.toJson();
    }
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsIntroScreen && other.screen == screen && other.screen0 == screen0;
  }

  @override
  int get hashCode => screen.hashCode ^ screen0.hashCode;
}

class SettingsScreen {
  String? image;
  SettingsTitle? title;
  SettingsTitle? subTitle;
  SettingsTitle? paragraph;

  SettingsScreen({this.image, this.title, this.subTitle, this.paragraph});

  SettingsScreen.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'] != null ? SettingsTitle.fromJson(json['title']) : null;
    subTitle = json['sub_title'] != null ? SettingsTitle.fromJson(json['sub_title']) : null;
    paragraph = json['paragraph'] != null ? SettingsTitle.fromJson(json['paragraph']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    if (title != null) {
      data['title'] = title!.toJson();
    }
    if (subTitle != null) {
      data['sub_title'] = subTitle!.toJson();
    }
    if (paragraph != null) {
      data['paragraph'] = paragraph!.toJson();
    }
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsScreen && other.image == image && other.title == title && other.subTitle == subTitle && other.paragraph == paragraph;
  }

  @override
  int get hashCode {
    return image.hashCode ^ title.hashCode ^ subTitle.hashCode ^ paragraph.hashCode;
  }
}

class SettingsTitle {
  String? key;
  String? value;

  SettingsTitle({this.key, this.value});

  SettingsTitle.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsTitle && other.key == key && other.value == value;
  }

  @override
  int get hashCode => key.hashCode ^ value.hashCode;
}

class SettingsDefaultLanguage {
  int? id;
  String? symbols;
  SettingsTitle? nameValues;

  SettingsDefaultLanguage({this.id, this.symbols, this.nameValues});

  SettingsDefaultLanguage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    symbols = json['symbols'];
    nameValues = json['name_values'] != null ? SettingsTitle.fromJson(json['name_values']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['symbols'] = symbols;
    if (nameValues != null) {
      data['name_values'] = nameValues!.toJson();
    }
    return data;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SettingsDefaultLanguage && other.id == id && other.symbols == symbols && other.nameValues == nameValues;
  }

  @override
  int get hashCode => id.hashCode ^ symbols.hashCode ^ nameValues.hashCode;
}
