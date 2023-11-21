// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'website_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebsiteRequestModel _$WebsiteRequestModelFromJson(Map<String, dynamic> json) {
  return _WebsiteRequestModel.fromJson(json);
}

/// @nodoc
mixin _$WebsiteRequestModel {
  @JsonKey(name: 'language_id')
  int get languageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_code')
  String get languageCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'language_name')
  String get languageName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebsiteRequestModelCopyWith<WebsiteRequestModel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsiteRequestModelCopyWith<$Res> {
  factory $WebsiteRequestModelCopyWith(WebsiteRequestModel value, $Res Function(WebsiteRequestModel) then) =
      _$WebsiteRequestModelCopyWithImpl<$Res, WebsiteRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'language_id') int languageId,
      @JsonKey(name: 'language_code') String languageCode,
      @JsonKey(name: 'language_name') String languageName});
}

/// @nodoc
class _$WebsiteRequestModelCopyWithImpl<$Res, $Val extends WebsiteRequestModel>
    implements $WebsiteRequestModelCopyWith<$Res> {
  _$WebsiteRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = null,
    Object? languageCode = null,
    Object? languageName = null,
  }) {
    return _then(_value.copyWith(
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsiteRequestModelImplCopyWith<$Res> implements $WebsiteRequestModelCopyWith<$Res> {
  factory _$$WebsiteRequestModelImplCopyWith(
          _$WebsiteRequestModelImpl value, $Res Function(_$WebsiteRequestModelImpl) then) =
      __$$WebsiteRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'language_id') int languageId,
      @JsonKey(name: 'language_code') String languageCode,
      @JsonKey(name: 'language_name') String languageName});
}

/// @nodoc
class __$$WebsiteRequestModelImplCopyWithImpl<$Res>
    extends _$WebsiteRequestModelCopyWithImpl<$Res, _$WebsiteRequestModelImpl>
    implements _$$WebsiteRequestModelImplCopyWith<$Res> {
  __$$WebsiteRequestModelImplCopyWithImpl(
      _$WebsiteRequestModelImpl _value, $Res Function(_$WebsiteRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = null,
    Object? languageCode = null,
    Object? languageName = null,
  }) {
    return _then(_$WebsiteRequestModelImpl(
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _value.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsiteRequestModelImpl implements _WebsiteRequestModel {
  const _$WebsiteRequestModelImpl(
      {@JsonKey(name: 'language_id') required this.languageId,
      @JsonKey(name: 'language_code') required this.languageCode,
      @JsonKey(name: 'language_name') required this.languageName});

  factory _$WebsiteRequestModelImpl.fromJson(Map<String, dynamic> json) => _$$WebsiteRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'language_id')
  final int languageId;
  @override
  @JsonKey(name: 'language_code')
  final String languageCode;
  @override
  @JsonKey(name: 'language_name')
  final String languageName;

  @override
  String toString() {
    return 'WebsiteRequestModel(languageId: $languageId, languageCode: $languageCode, languageName: $languageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsiteRequestModelImpl &&
            (identical(other.languageId, languageId) || other.languageId == languageId) &&
            (identical(other.languageCode, languageCode) || other.languageCode == languageCode) &&
            (identical(other.languageName, languageName) || other.languageName == languageName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageId, languageCode, languageName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsiteRequestModelImplCopyWith<_$WebsiteRequestModelImpl> get copyWith =>
      __$$WebsiteRequestModelImplCopyWithImpl<_$WebsiteRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsiteRequestModelImplToJson(
      this,
    );
  }
}

abstract class _WebsiteRequestModel implements WebsiteRequestModel {
  const factory _WebsiteRequestModel(
      {@JsonKey(name: 'language_id') required final int languageId,
      @JsonKey(name: 'language_code') required final String languageCode,
      @JsonKey(name: 'language_name') required final String languageName}) = _$WebsiteRequestModelImpl;

  factory _WebsiteRequestModel.fromJson(Map<String, dynamic> json) = _$WebsiteRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'language_id')
  int get languageId;
  @override
  @JsonKey(name: 'language_code')
  String get languageCode;
  @override
  @JsonKey(name: 'language_name')
  String get languageName;
  @override
  @JsonKey(ignore: true)
  _$$WebsiteRequestModelImplCopyWith<_$WebsiteRequestModelImpl> get copyWith => throw _privateConstructorUsedError;
}
