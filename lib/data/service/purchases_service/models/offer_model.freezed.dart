// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferModel _$OfferModelFromJson(Map<String, dynamic> json) {
  return _OfferModel.fromJson(json);
}

/// @nodoc
mixin _$OfferModel {
  String get offerId => throw _privateConstructorUsedError;
  String get beatId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get licenseType => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferModelCopyWith<OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferModelCopyWith<$Res> {
  factory $OfferModelCopyWith(
          OfferModel value, $Res Function(OfferModel) then) =
      _$OfferModelCopyWithImpl<$Res, OfferModel>;
  @useResult
  $Res call(
      {String offerId,
      String beatId,
      String authorId,
      String licenseType,
      String fileType,
      int price});
}

/// @nodoc
class _$OfferModelCopyWithImpl<$Res, $Val extends OfferModel>
    implements $OfferModelCopyWith<$Res> {
  _$OfferModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? beatId = null,
    Object? authorId = null,
    Object? licenseType = null,
    Object? fileType = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      beatId: null == beatId
          ? _value.beatId
          : beatId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      licenseType: null == licenseType
          ? _value.licenseType
          : licenseType // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferModelCopyWith<$Res>
    implements $OfferModelCopyWith<$Res> {
  factory _$$_OfferModelCopyWith(
          _$_OfferModel value, $Res Function(_$_OfferModel) then) =
      __$$_OfferModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String offerId,
      String beatId,
      String authorId,
      String licenseType,
      String fileType,
      int price});
}

/// @nodoc
class __$$_OfferModelCopyWithImpl<$Res>
    extends _$OfferModelCopyWithImpl<$Res, _$_OfferModel>
    implements _$$_OfferModelCopyWith<$Res> {
  __$$_OfferModelCopyWithImpl(
      _$_OfferModel _value, $Res Function(_$_OfferModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? beatId = null,
    Object? authorId = null,
    Object? licenseType = null,
    Object? fileType = null,
    Object? price = null,
  }) {
    return _then(_$_OfferModel(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      beatId: null == beatId
          ? _value.beatId
          : beatId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      licenseType: null == licenseType
          ? _value.licenseType
          : licenseType // ignore: cast_nullable_to_non_nullable
              as String,
      fileType: null == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferModel implements _OfferModel {
  const _$_OfferModel(
      {required this.offerId,
      required this.beatId,
      required this.authorId,
      required this.licenseType,
      required this.fileType,
      required this.price});

  factory _$_OfferModel.fromJson(Map<String, dynamic> json) =>
      _$$_OfferModelFromJson(json);

  @override
  final String offerId;
  @override
  final String beatId;
  @override
  final String authorId;
  @override
  final String licenseType;
  @override
  final String fileType;
  @override
  final int price;

  @override
  String toString() {
    return 'OfferModel(offerId: $offerId, beatId: $beatId, authorId: $authorId, licenseType: $licenseType, fileType: $fileType, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferModel &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.beatId, beatId) || other.beatId == beatId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.licenseType, licenseType) ||
                other.licenseType == licenseType) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, offerId, beatId, authorId, licenseType, fileType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      __$$_OfferModelCopyWithImpl<_$_OfferModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferModelToJson(
      this,
    );
  }
}

abstract class _OfferModel implements OfferModel {
  const factory _OfferModel(
      {required final String offerId,
      required final String beatId,
      required final String authorId,
      required final String licenseType,
      required final String fileType,
      required final int price}) = _$_OfferModel;

  factory _OfferModel.fromJson(Map<String, dynamic> json) =
      _$_OfferModel.fromJson;

  @override
  String get offerId;
  @override
  String get beatId;
  @override
  String get authorId;
  @override
  String get licenseType;
  @override
  String get fileType;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_OfferModelCopyWith<_$_OfferModel> get copyWith =>
      throw _privateConstructorUsedError;
}
