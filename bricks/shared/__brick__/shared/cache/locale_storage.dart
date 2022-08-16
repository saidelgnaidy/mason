import 'package:{{name}}/data/models/user_info/user_model.dart';
import 'package:{{name}}/di.dart';
import 'package:get_storage/get_storage.dart';

class KStorageKeys {
  static const String themeMode = 'themeMode';
  static const String locale = 'locale';
  static const String lang = 'language';
  static const String langId = 'languageId';
  static const String currency = 'currency';
  static const String currencyId = 'currencyId';
  static const String token = 'token';
  static const String fcmToken = 'fcmToken';
  static const String userModel = 'userModel';
  static const String isSplashSeen = 'isSplashSeen';
}

class KStorage {
  KStorage();
  final GetStorage _storage = GetStorage();
  static KStorage i = Di.kstorage;

  get erase async => await _storage.erase();

  setLang(String lang) => _storage.write(KStorageKeys.lang, lang);
  String? get getLang => _storage.read(KStorageKeys.lang);

  setLangId(int lang) => _storage.write(KStorageKeys.langId, lang);
  String? get getLangId => _storage.read(KStorageKeys.langId).toString();

  setCurrency(String currency) => _storage.write(KStorageKeys.currency, currency);
  String? get getcurrency => _storage.read(KStorageKeys.currency);

  setCurrencyId(int currency) => _storage.write(KStorageKeys.currencyId, currency);
  String? get getcurrencyId => _storage.read(KStorageKeys.currencyId).toString();

  setToken(String? token) => _storage.write(KStorageKeys.token, token);
  get delToken => _storage.remove(KStorageKeys.token);
  String? get getToken => _storage.read(KStorageKeys.token);

  setUserInfo(UserModel? model) => _storage.write(KStorageKeys.userModel, model?.toJson() as Map<String, dynamic>);
  get delUserInfo => _storage.remove(KStorageKeys.userModel);
  UserModel? get getUserInfo {
    if (_storage.read(KStorageKeys.userModel) != null) {
      return UserModel.fromJson(_storage.read(KStorageKeys.userModel));
    } else {
      return null;
    }
  }

  setIsSplashSeen() => _storage.write(KStorageKeys.isSplashSeen, true);
  bool get isSplashSeen => _storage.read(KStorageKeys.isSplashSeen) ?? false;

  setFcmToken(String? token) => _storage.write(KStorageKeys.fcmToken, token);
  String? get getFcmToken => _storage.read(KStorageKeys.fcmToken);
}
