import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{name}}/data/models/global/currencies/currencies_model.dart';
import 'package:{{name}}/data/models/global/languages/languages_model.dart';
import 'package:{{name}}/data/models/global/location/cities/cities_model.dart';
import 'package:{{name}}/data/models/global/location/countries/countries_model.dart';
import 'package:{{name}}/data/models/global/settings/settings_model.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/shared/api_client/api_clien_helper.dart';
import 'package:{{name}}/shared/api_client/endpoints.dart';
import 'package:{{name}}/shared/error/failuers.dart';

abstract class _GlobalRepoAbs {
  Future<Either<KFailure, SettingsModel>> getSettings();
  Future<Either<KFailure, CountriesModel>> getCountries();
  Future<Either<KFailure, CitiesModel>> getCities(String countryId);
  Future<Either<KFailure, LanguagesModel>> getLanguages();
  Future<Either<KFailure, CurrenciesModel>> getCurrencies();
}

class GlobalRepoImpl implements _GlobalRepoAbs {
  @override
  Future<Either<KFailure, SettingsModel>> getSettings() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.settings);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(SettingsModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, CountriesModel>> getCountries() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.countries);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(CountriesModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, CitiesModel>> getCities(String countryId) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.cities, params: {"country_id": countryId});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(CitiesModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, LanguagesModel>> getLanguages() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.lang);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(LanguagesModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, CurrenciesModel>> getCurrencies() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.currencies);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(CurrenciesModel.fromJson(r)),
    );
  }
}
