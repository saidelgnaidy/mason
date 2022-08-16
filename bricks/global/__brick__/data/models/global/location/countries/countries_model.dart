import 'package:freezed_annotation/freezed_annotation.dart';

part 'countries_model.freezed.dart';
part 'countries_model.g.dart';

@freezed
abstract class CountriesModel with _$CountriesModel {
  const factory CountriesModel({
    bool? success,
    String? status,
    String? message,
    List<CountriesDatum>? data,
  }) = _CountriesModel;

  factory CountriesModel.fromJson(Map<String, dynamic> json) => _$CountriesModelFromJson(json);
}

@freezed
abstract class CountriesDatum with _$CountriesDatum {
  const factory CountriesDatum({
    int? id,
    String? symbols,
    Name? name,
    CountryId? countryId,
    bool? isVisible,
  }) = _CountriesDatum;

  factory CountriesDatum.fromJson(Map<String, dynamic> json) => _$CountriesDatumFromJson(json);
}

@freezed
abstract class CountryId with _$CountryId {
  const factory CountryId({
    int? id,
    String? symbols,
    Name? name,
    DefaultLanguage? defaultLanguage,
    Flag? flag,
    bool? isVisible,
  }) = _CountryId;

  factory CountryId.fromJson(Map<String, dynamic> json) => _$CountryIdFromJson(json);
}

@freezed
abstract class DefaultLanguage with _$DefaultLanguage {
  const factory DefaultLanguage({
    int? id,
    String? symbols,
    Name? nameValues,
  }) = _DefaultLanguage;

  factory DefaultLanguage.fromJson(Map<String, dynamic> json) => _$DefaultLanguageFromJson(json);
}

@freezed
abstract class Name with _$Name {
  const factory Name({
    String? key,
    String? value,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
abstract class Flag with _$Flag {
  const factory Flag({
    String? the16Px,
    String? the32Px,
    String? the64Px,
    String? the128Px,
  }) = _Flag;

  factory Flag.fromJson(Map<String, dynamic> json) => _$FlagFromJson(json);
}
