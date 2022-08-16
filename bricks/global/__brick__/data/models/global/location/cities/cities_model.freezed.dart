// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cities_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesModel _$CitiesModelFromJson(Map<String, dynamic> json) {
  return _CitiesModel.fromJson(json);
}

/// @nodoc
mixin _$CitiesModel {
  bool? get success => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<CitiesDatum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesModelCopyWith<CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesModelCopyWith<$Res> {
  factory $CitiesModelCopyWith(
          CitiesModel value, $Res Function(CitiesModel) then) =
      _$CitiesModelCopyWithImpl<$Res>;
  $Res call(
      {bool? success,
      String? status,
      String? message,
      List<CitiesDatum>? data});
}

/// @nodoc
class _$CitiesModelCopyWithImpl<$Res> implements $CitiesModelCopyWith<$Res> {
  _$CitiesModelCopyWithImpl(this._value, this._then);

  final CitiesModel _value;
  // ignore: unused_field
  final $Res Function(CitiesModel) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CitiesDatum>?,
    ));
  }
}

/// @nodoc
abstract class _$$_CitiesModelCopyWith<$Res>
    implements $CitiesModelCopyWith<$Res> {
  factory _$$_CitiesModelCopyWith(
          _$_CitiesModel value, $Res Function(_$_CitiesModel) then) =
      __$$_CitiesModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? success,
      String? status,
      String? message,
      List<CitiesDatum>? data});
}

/// @nodoc
class __$$_CitiesModelCopyWithImpl<$Res> extends _$CitiesModelCopyWithImpl<$Res>
    implements _$$_CitiesModelCopyWith<$Res> {
  __$$_CitiesModelCopyWithImpl(
      _$_CitiesModel _value, $Res Function(_$_CitiesModel) _then)
      : super(_value, (v) => _then(v as _$_CitiesModel));

  @override
  _$_CitiesModel get _value => super._value as _$_CitiesModel;

  @override
  $Res call({
    Object? success = freezed,
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CitiesModel(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CitiesDatum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesModel implements _CitiesModel {
  const _$_CitiesModel(
      {this.success, this.status, this.message, final List<CitiesDatum>? data})
      : _data = data;

  factory _$_CitiesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesModelFromJson(json);

  @override
  final bool? success;
  @override
  final String? status;
  @override
  final String? message;
  final List<CitiesDatum>? _data;
  @override
  List<CitiesDatum>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CitiesModel(success: $success, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesModel &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_CitiesModelCopyWith<_$_CitiesModel> get copyWith =>
      __$$_CitiesModelCopyWithImpl<_$_CitiesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesModelToJson(
      this,
    );
  }
}

abstract class _CitiesModel implements CitiesModel {
  const factory _CitiesModel(
      {final bool? success,
      final String? status,
      final String? message,
      final List<CitiesDatum>? data}) = _$_CitiesModel;

  factory _CitiesModel.fromJson(Map<String, dynamic> json) =
      _$_CitiesModel.fromJson;

  @override
  bool? get success;
  @override
  String? get status;
  @override
  String? get message;
  @override
  List<CitiesDatum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesModelCopyWith<_$_CitiesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CitiesDatum _$CitiesDatumFromJson(Map<String, dynamic> json) {
  return _CitiesDatum.fromJson(json);
}

/// @nodoc
mixin _$CitiesDatum {
  int? get id => throw _privateConstructorUsedError;
  String? get symbols => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  CountryId? get countryId => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesDatumCopyWith<CitiesDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesDatumCopyWith<$Res> {
  factory $CitiesDatumCopyWith(
          CitiesDatum value, $Res Function(CitiesDatum) then) =
      _$CitiesDatumCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? symbols,
      Name? name,
      CountryId? countryId,
      bool? isVisible});

  $NameCopyWith<$Res>? get name;
  $CountryIdCopyWith<$Res>? get countryId;
}

/// @nodoc
class _$CitiesDatumCopyWithImpl<$Res> implements $CitiesDatumCopyWith<$Res> {
  _$CitiesDatumCopyWithImpl(this._value, this._then);

  final CitiesDatum _value;
  // ignore: unused_field
  final $Res Function(CitiesDatum) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as CountryId?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $CountryIdCopyWith<$Res>? get countryId {
    if (_value.countryId == null) {
      return null;
    }

    return $CountryIdCopyWith<$Res>(_value.countryId!, (value) {
      return _then(_value.copyWith(countryId: value));
    });
  }
}

/// @nodoc
abstract class _$$_CitiesDatumCopyWith<$Res>
    implements $CitiesDatumCopyWith<$Res> {
  factory _$$_CitiesDatumCopyWith(
          _$_CitiesDatum value, $Res Function(_$_CitiesDatum) then) =
      __$$_CitiesDatumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? symbols,
      Name? name,
      CountryId? countryId,
      bool? isVisible});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $CountryIdCopyWith<$Res>? get countryId;
}

/// @nodoc
class __$$_CitiesDatumCopyWithImpl<$Res> extends _$CitiesDatumCopyWithImpl<$Res>
    implements _$$_CitiesDatumCopyWith<$Res> {
  __$$_CitiesDatumCopyWithImpl(
      _$_CitiesDatum _value, $Res Function(_$_CitiesDatum) _then)
      : super(_value, (v) => _then(v as _$_CitiesDatum));

  @override
  _$_CitiesDatum get _value => super._value as _$_CitiesDatum;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? name = freezed,
    Object? countryId = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$_CitiesDatum(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      countryId: countryId == freezed
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as CountryId?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesDatum implements _CitiesDatum {
  const _$_CitiesDatum(
      {this.id, this.symbols, this.name, this.countryId, this.isVisible});

  factory _$_CitiesDatum.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesDatumFromJson(json);

  @override
  final int? id;
  @override
  final String? symbols;
  @override
  final Name? name;
  @override
  final CountryId? countryId;
  @override
  final bool? isVisible;

  @override
  String toString() {
    return 'CitiesDatum(id: $id, symbols: $symbols, name: $name, countryId: $countryId, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesDatum &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.countryId, countryId) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbols),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(countryId),
      const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_CitiesDatumCopyWith<_$_CitiesDatum> get copyWith =>
      __$$_CitiesDatumCopyWithImpl<_$_CitiesDatum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesDatumToJson(
      this,
    );
  }
}

abstract class _CitiesDatum implements CitiesDatum {
  const factory _CitiesDatum(
      {final int? id,
      final String? symbols,
      final Name? name,
      final CountryId? countryId,
      final bool? isVisible}) = _$_CitiesDatum;

  factory _CitiesDatum.fromJson(Map<String, dynamic> json) =
      _$_CitiesDatum.fromJson;

  @override
  int? get id;
  @override
  String? get symbols;
  @override
  Name? get name;
  @override
  CountryId? get countryId;
  @override
  bool? get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesDatumCopyWith<_$_CitiesDatum> get copyWith =>
      throw _privateConstructorUsedError;
}

CountryId _$CountryIdFromJson(Map<String, dynamic> json) {
  return _CountryId.fromJson(json);
}

/// @nodoc
mixin _$CountryId {
  int? get id => throw _privateConstructorUsedError;
  String? get symbols => throw _privateConstructorUsedError;
  Name? get name => throw _privateConstructorUsedError;
  DefaultLanguage? get defaultLanguage => throw _privateConstructorUsedError;
  Flag? get flag => throw _privateConstructorUsedError;
  bool? get isVisible => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryIdCopyWith<CountryId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryIdCopyWith<$Res> {
  factory $CountryIdCopyWith(CountryId value, $Res Function(CountryId) then) =
      _$CountryIdCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? symbols,
      Name? name,
      DefaultLanguage? defaultLanguage,
      Flag? flag,
      bool? isVisible});

  $NameCopyWith<$Res>? get name;
  $DefaultLanguageCopyWith<$Res>? get defaultLanguage;
  $FlagCopyWith<$Res>? get flag;
}

/// @nodoc
class _$CountryIdCopyWithImpl<$Res> implements $CountryIdCopyWith<$Res> {
  _$CountryIdCopyWithImpl(this._value, this._then);

  final CountryId _value;
  // ignore: unused_field
  final $Res Function(CountryId) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? name = freezed,
    Object? defaultLanguage = freezed,
    Object? flag = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      defaultLanguage: defaultLanguage == freezed
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as DefaultLanguage?,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $NameCopyWith<$Res>? get name {
    if (_value.name == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.name!, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $DefaultLanguageCopyWith<$Res>? get defaultLanguage {
    if (_value.defaultLanguage == null) {
      return null;
    }

    return $DefaultLanguageCopyWith<$Res>(_value.defaultLanguage!, (value) {
      return _then(_value.copyWith(defaultLanguage: value));
    });
  }

  @override
  $FlagCopyWith<$Res>? get flag {
    if (_value.flag == null) {
      return null;
    }

    return $FlagCopyWith<$Res>(_value.flag!, (value) {
      return _then(_value.copyWith(flag: value));
    });
  }
}

/// @nodoc
abstract class _$$_CountryIdCopyWith<$Res> implements $CountryIdCopyWith<$Res> {
  factory _$$_CountryIdCopyWith(
          _$_CountryId value, $Res Function(_$_CountryId) then) =
      __$$_CountryIdCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? symbols,
      Name? name,
      DefaultLanguage? defaultLanguage,
      Flag? flag,
      bool? isVisible});

  @override
  $NameCopyWith<$Res>? get name;
  @override
  $DefaultLanguageCopyWith<$Res>? get defaultLanguage;
  @override
  $FlagCopyWith<$Res>? get flag;
}

/// @nodoc
class __$$_CountryIdCopyWithImpl<$Res> extends _$CountryIdCopyWithImpl<$Res>
    implements _$$_CountryIdCopyWith<$Res> {
  __$$_CountryIdCopyWithImpl(
      _$_CountryId _value, $Res Function(_$_CountryId) _then)
      : super(_value, (v) => _then(v as _$_CountryId));

  @override
  _$_CountryId get _value => super._value as _$_CountryId;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? name = freezed,
    Object? defaultLanguage = freezed,
    Object? flag = freezed,
    Object? isVisible = freezed,
  }) {
    return _then(_$_CountryId(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name?,
      defaultLanguage: defaultLanguage == freezed
          ? _value.defaultLanguage
          : defaultLanguage // ignore: cast_nullable_to_non_nullable
              as DefaultLanguage?,
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as Flag?,
      isVisible: isVisible == freezed
          ? _value.isVisible
          : isVisible // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryId implements _CountryId {
  const _$_CountryId(
      {this.id,
      this.symbols,
      this.name,
      this.defaultLanguage,
      this.flag,
      this.isVisible});

  factory _$_CountryId.fromJson(Map<String, dynamic> json) =>
      _$$_CountryIdFromJson(json);

  @override
  final int? id;
  @override
  final String? symbols;
  @override
  final Name? name;
  @override
  final DefaultLanguage? defaultLanguage;
  @override
  final Flag? flag;
  @override
  final bool? isVisible;

  @override
  String toString() {
    return 'CountryId(id: $id, symbols: $symbols, name: $name, defaultLanguage: $defaultLanguage, flag: $flag, isVisible: $isVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CountryId &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.defaultLanguage, defaultLanguage) &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.isVisible, isVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbols),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(defaultLanguage),
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(isVisible));

  @JsonKey(ignore: true)
  @override
  _$$_CountryIdCopyWith<_$_CountryId> get copyWith =>
      __$$_CountryIdCopyWithImpl<_$_CountryId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CountryIdToJson(
      this,
    );
  }
}

abstract class _CountryId implements CountryId {
  const factory _CountryId(
      {final int? id,
      final String? symbols,
      final Name? name,
      final DefaultLanguage? defaultLanguage,
      final Flag? flag,
      final bool? isVisible}) = _$_CountryId;

  factory _CountryId.fromJson(Map<String, dynamic> json) =
      _$_CountryId.fromJson;

  @override
  int? get id;
  @override
  String? get symbols;
  @override
  Name? get name;
  @override
  DefaultLanguage? get defaultLanguage;
  @override
  Flag? get flag;
  @override
  bool? get isVisible;
  @override
  @JsonKey(ignore: true)
  _$$_CountryIdCopyWith<_$_CountryId> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultLanguage _$DefaultLanguageFromJson(Map<String, dynamic> json) {
  return _DefaultLanguage.fromJson(json);
}

/// @nodoc
mixin _$DefaultLanguage {
  int? get id => throw _privateConstructorUsedError;
  String? get symbols => throw _privateConstructorUsedError;
  Name? get nameValues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultLanguageCopyWith<DefaultLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultLanguageCopyWith<$Res> {
  factory $DefaultLanguageCopyWith(
          DefaultLanguage value, $Res Function(DefaultLanguage) then) =
      _$DefaultLanguageCopyWithImpl<$Res>;
  $Res call({int? id, String? symbols, Name? nameValues});

  $NameCopyWith<$Res>? get nameValues;
}

/// @nodoc
class _$DefaultLanguageCopyWithImpl<$Res>
    implements $DefaultLanguageCopyWith<$Res> {
  _$DefaultLanguageCopyWithImpl(this._value, this._then);

  final DefaultLanguage _value;
  // ignore: unused_field
  final $Res Function(DefaultLanguage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? nameValues = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      nameValues: nameValues == freezed
          ? _value.nameValues
          : nameValues // ignore: cast_nullable_to_non_nullable
              as Name?,
    ));
  }

  @override
  $NameCopyWith<$Res>? get nameValues {
    if (_value.nameValues == null) {
      return null;
    }

    return $NameCopyWith<$Res>(_value.nameValues!, (value) {
      return _then(_value.copyWith(nameValues: value));
    });
  }
}

/// @nodoc
abstract class _$$_DefaultLanguageCopyWith<$Res>
    implements $DefaultLanguageCopyWith<$Res> {
  factory _$$_DefaultLanguageCopyWith(
          _$_DefaultLanguage value, $Res Function(_$_DefaultLanguage) then) =
      __$$_DefaultLanguageCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? symbols, Name? nameValues});

  @override
  $NameCopyWith<$Res>? get nameValues;
}

/// @nodoc
class __$$_DefaultLanguageCopyWithImpl<$Res>
    extends _$DefaultLanguageCopyWithImpl<$Res>
    implements _$$_DefaultLanguageCopyWith<$Res> {
  __$$_DefaultLanguageCopyWithImpl(
      _$_DefaultLanguage _value, $Res Function(_$_DefaultLanguage) _then)
      : super(_value, (v) => _then(v as _$_DefaultLanguage));

  @override
  _$_DefaultLanguage get _value => super._value as _$_DefaultLanguage;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
    Object? nameValues = freezed,
  }) {
    return _then(_$_DefaultLanguage(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as String?,
      nameValues: nameValues == freezed
          ? _value.nameValues
          : nameValues // ignore: cast_nullable_to_non_nullable
              as Name?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DefaultLanguage implements _DefaultLanguage {
  const _$_DefaultLanguage({this.id, this.symbols, this.nameValues});

  factory _$_DefaultLanguage.fromJson(Map<String, dynamic> json) =>
      _$$_DefaultLanguageFromJson(json);

  @override
  final int? id;
  @override
  final String? symbols;
  @override
  final Name? nameValues;

  @override
  String toString() {
    return 'DefaultLanguage(id: $id, symbols: $symbols, nameValues: $nameValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DefaultLanguage &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            const DeepCollectionEquality()
                .equals(other.nameValues, nameValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbols),
      const DeepCollectionEquality().hash(nameValues));

  @JsonKey(ignore: true)
  @override
  _$$_DefaultLanguageCopyWith<_$_DefaultLanguage> get copyWith =>
      __$$_DefaultLanguageCopyWithImpl<_$_DefaultLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DefaultLanguageToJson(
      this,
    );
  }
}

abstract class _DefaultLanguage implements DefaultLanguage {
  const factory _DefaultLanguage(
      {final int? id,
      final String? symbols,
      final Name? nameValues}) = _$_DefaultLanguage;

  factory _DefaultLanguage.fromJson(Map<String, dynamic> json) =
      _$_DefaultLanguage.fromJson;

  @override
  int? get id;
  @override
  String? get symbols;
  @override
  Name? get nameValues;
  @override
  @JsonKey(ignore: true)
  _$$_DefaultLanguageCopyWith<_$_DefaultLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String? get key => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res>;
  $Res call({String? key, String? value});
}

/// @nodoc
class _$NameCopyWithImpl<$Res> implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  final Name _value;
  // ignore: unused_field
  final $Res Function(Name) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NameCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$_NameCopyWith(_$_Name value, $Res Function(_$_Name) then) =
      __$$_NameCopyWithImpl<$Res>;
  @override
  $Res call({String? key, String? value});
}

/// @nodoc
class __$$_NameCopyWithImpl<$Res> extends _$NameCopyWithImpl<$Res>
    implements _$$_NameCopyWith<$Res> {
  __$$_NameCopyWithImpl(_$_Name _value, $Res Function(_$_Name) _then)
      : super(_value, (v) => _then(v as _$_Name));

  @override
  _$_Name get _value => super._value as _$_Name;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Name(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Name implements _Name {
  const _$_Name({this.key, this.value});

  factory _$_Name.fromJson(Map<String, dynamic> json) => _$$_NameFromJson(json);

  @override
  final String? key;
  @override
  final String? value;

  @override
  String toString() {
    return 'Name(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Name &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_NameCopyWith<_$_Name> get copyWith =>
      __$$_NameCopyWithImpl<_$_Name>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NameToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name({final String? key, final String? value}) = _$_Name;

  factory _Name.fromJson(Map<String, dynamic> json) = _$_Name.fromJson;

  @override
  String? get key;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_NameCopyWith<_$_Name> get copyWith => throw _privateConstructorUsedError;
}

Flag _$FlagFromJson(Map<String, dynamic> json) {
  return _Flag.fromJson(json);
}

/// @nodoc
mixin _$Flag {
  String? get the16Px => throw _privateConstructorUsedError;
  String? get the32Px => throw _privateConstructorUsedError;
  String? get the64Px => throw _privateConstructorUsedError;
  String? get the128Px => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlagCopyWith<Flag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlagCopyWith<$Res> {
  factory $FlagCopyWith(Flag value, $Res Function(Flag) then) =
      _$FlagCopyWithImpl<$Res>;
  $Res call(
      {String? the16Px, String? the32Px, String? the64Px, String? the128Px});
}

/// @nodoc
class _$FlagCopyWithImpl<$Res> implements $FlagCopyWith<$Res> {
  _$FlagCopyWithImpl(this._value, this._then);

  final Flag _value;
  // ignore: unused_field
  final $Res Function(Flag) _then;

  @override
  $Res call({
    Object? the16Px = freezed,
    Object? the32Px = freezed,
    Object? the64Px = freezed,
    Object? the128Px = freezed,
  }) {
    return _then(_value.copyWith(
      the16Px: the16Px == freezed
          ? _value.the16Px
          : the16Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the32Px: the32Px == freezed
          ? _value.the32Px
          : the32Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the64Px: the64Px == freezed
          ? _value.the64Px
          : the64Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the128Px: the128Px == freezed
          ? _value.the128Px
          : the128Px // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FlagCopyWith<$Res> implements $FlagCopyWith<$Res> {
  factory _$$_FlagCopyWith(_$_Flag value, $Res Function(_$_Flag) then) =
      __$$_FlagCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? the16Px, String? the32Px, String? the64Px, String? the128Px});
}

/// @nodoc
class __$$_FlagCopyWithImpl<$Res> extends _$FlagCopyWithImpl<$Res>
    implements _$$_FlagCopyWith<$Res> {
  __$$_FlagCopyWithImpl(_$_Flag _value, $Res Function(_$_Flag) _then)
      : super(_value, (v) => _then(v as _$_Flag));

  @override
  _$_Flag get _value => super._value as _$_Flag;

  @override
  $Res call({
    Object? the16Px = freezed,
    Object? the32Px = freezed,
    Object? the64Px = freezed,
    Object? the128Px = freezed,
  }) {
    return _then(_$_Flag(
      the16Px: the16Px == freezed
          ? _value.the16Px
          : the16Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the32Px: the32Px == freezed
          ? _value.the32Px
          : the32Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the64Px: the64Px == freezed
          ? _value.the64Px
          : the64Px // ignore: cast_nullable_to_non_nullable
              as String?,
      the128Px: the128Px == freezed
          ? _value.the128Px
          : the128Px // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Flag implements _Flag {
  const _$_Flag({this.the16Px, this.the32Px, this.the64Px, this.the128Px});

  factory _$_Flag.fromJson(Map<String, dynamic> json) => _$$_FlagFromJson(json);

  @override
  final String? the16Px;
  @override
  final String? the32Px;
  @override
  final String? the64Px;
  @override
  final String? the128Px;

  @override
  String toString() {
    return 'Flag(the16Px: $the16Px, the32Px: $the32Px, the64Px: $the64Px, the128Px: $the128Px)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flag &&
            const DeepCollectionEquality().equals(other.the16Px, the16Px) &&
            const DeepCollectionEquality().equals(other.the32Px, the32Px) &&
            const DeepCollectionEquality().equals(other.the64Px, the64Px) &&
            const DeepCollectionEquality().equals(other.the128Px, the128Px));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(the16Px),
      const DeepCollectionEquality().hash(the32Px),
      const DeepCollectionEquality().hash(the64Px),
      const DeepCollectionEquality().hash(the128Px));

  @JsonKey(ignore: true)
  @override
  _$$_FlagCopyWith<_$_Flag> get copyWith =>
      __$$_FlagCopyWithImpl<_$_Flag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlagToJson(
      this,
    );
  }
}

abstract class _Flag implements Flag {
  const factory _Flag(
      {final String? the16Px,
      final String? the32Px,
      final String? the64Px,
      final String? the128Px}) = _$_Flag;

  factory _Flag.fromJson(Map<String, dynamic> json) = _$_Flag.fromJson;

  @override
  String? get the16Px;
  @override
  String? get the32Px;
  @override
  String? get the64Px;
  @override
  String? get the128Px;
  @override
  @JsonKey(ignore: true)
  _$$_FlagCopyWith<_$_Flag> get copyWith => throw _privateConstructorUsedError;
}
