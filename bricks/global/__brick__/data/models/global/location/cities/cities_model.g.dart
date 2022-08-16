// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CitiesModel _$$_CitiesModelFromJson(Map<String, dynamic> json) =>
    _$_CitiesModel(
      success: json['success'] as bool?,
      status: json['status'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CitiesDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CitiesModelToJson(_$_CitiesModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_CitiesDatum _$$_CitiesDatumFromJson(Map<String, dynamic> json) =>
    _$_CitiesDatum(
      id: json['id'] as int?,
      symbols: json['symbols'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      countryId: json['countryId'] == null
          ? null
          : CountryId.fromJson(json['countryId'] as Map<String, dynamic>),
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$_CitiesDatumToJson(_$_CitiesDatum instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbols': instance.symbols,
      'name': instance.name,
      'countryId': instance.countryId,
      'isVisible': instance.isVisible,
    };

_$_CountryId _$$_CountryIdFromJson(Map<String, dynamic> json) => _$_CountryId(
      id: json['id'] as int?,
      symbols: json['symbols'] as String?,
      name: json['name'] == null
          ? null
          : Name.fromJson(json['name'] as Map<String, dynamic>),
      defaultLanguage: json['defaultLanguage'] == null
          ? null
          : DefaultLanguage.fromJson(
              json['defaultLanguage'] as Map<String, dynamic>),
      flag: json['flag'] == null
          ? null
          : Flag.fromJson(json['flag'] as Map<String, dynamic>),
      isVisible: json['isVisible'] as bool?,
    );

Map<String, dynamic> _$$_CountryIdToJson(_$_CountryId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbols': instance.symbols,
      'name': instance.name,
      'defaultLanguage': instance.defaultLanguage,
      'flag': instance.flag,
      'isVisible': instance.isVisible,
    };

_$_DefaultLanguage _$$_DefaultLanguageFromJson(Map<String, dynamic> json) =>
    _$_DefaultLanguage(
      id: json['id'] as int?,
      symbols: json['symbols'] as String?,
      nameValues: json['nameValues'] == null
          ? null
          : Name.fromJson(json['nameValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DefaultLanguageToJson(_$_DefaultLanguage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbols': instance.symbols,
      'nameValues': instance.nameValues,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$_Flag _$$_FlagFromJson(Map<String, dynamic> json) => _$_Flag(
      the16Px: json['the16Px'] as String?,
      the32Px: json['the32Px'] as String?,
      the64Px: json['the64Px'] as String?,
      the128Px: json['the128Px'] as String?,
    );

Map<String, dynamic> _$$_FlagToJson(_$_Flag instance) => <String, dynamic>{
      'the16Px': instance.the16Px,
      'the32Px': instance.the32Px,
      'the64Px': instance.the64Px,
      'the128Px': instance.the128Px,
    };
