// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OfferEntity {
  String get offerId => throw _privateConstructorUsedError;
  String get beatId => throw _privateConstructorUsedError;
  String get licenseType => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OfferEntityCopyWith<OfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferEntityCopyWith<$Res> {
  factory $OfferEntityCopyWith(
          OfferEntity value, $Res Function(OfferEntity) then) =
      _$OfferEntityCopyWithImpl<$Res, OfferEntity>;
  @useResult
  $Res call({String offerId, String beatId, String licenseType, int price});
}

/// @nodoc
class _$OfferEntityCopyWithImpl<$Res, $Val extends OfferEntity>
    implements $OfferEntityCopyWith<$Res> {
  _$OfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? beatId = null,
    Object? licenseType = null,
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
      licenseType: null == licenseType
          ? _value.licenseType
          : licenseType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferEntityCopyWith<$Res>
    implements $OfferEntityCopyWith<$Res> {
  factory _$$_OfferEntityCopyWith(
          _$_OfferEntity value, $Res Function(_$_OfferEntity) then) =
      __$$_OfferEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String offerId, String beatId, String licenseType, int price});
}

/// @nodoc
class __$$_OfferEntityCopyWithImpl<$Res>
    extends _$OfferEntityCopyWithImpl<$Res, _$_OfferEntity>
    implements _$$_OfferEntityCopyWith<$Res> {
  __$$_OfferEntityCopyWithImpl(
      _$_OfferEntity _value, $Res Function(_$_OfferEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? beatId = null,
    Object? licenseType = null,
    Object? price = null,
  }) {
    return _then(_$_OfferEntity(
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      beatId: null == beatId
          ? _value.beatId
          : beatId // ignore: cast_nullable_to_non_nullable
              as String,
      licenseType: null == licenseType
          ? _value.licenseType
          : licenseType // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OfferEntity implements _OfferEntity {
  const _$_OfferEntity(
      {required this.offerId,
      required this.beatId,
      required this.licenseType,
      required this.price});

  @override
  final String offerId;
  @override
  final String beatId;
  @override
  final String licenseType;
  @override
  final int price;

  @override
  String toString() {
    return 'OfferEntity(offerId: $offerId, beatId: $beatId, licenseType: $licenseType, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferEntity &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.beatId, beatId) || other.beatId == beatId) &&
            (identical(other.licenseType, licenseType) ||
                other.licenseType == licenseType) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, offerId, beatId, licenseType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferEntityCopyWith<_$_OfferEntity> get copyWith =>
      __$$_OfferEntityCopyWithImpl<_$_OfferEntity>(this, _$identity);
}

abstract class _OfferEntity implements OfferEntity {
  const factory _OfferEntity(
      {required final String offerId,
      required final String beatId,
      required final String licenseType,
      required final int price}) = _$_OfferEntity;

  @override
  String get offerId;
  @override
  String get beatId;
  @override
  String get licenseType;
  @override
  int get price;
  @override
  @JsonKey(ignore: true)
  _$$_OfferEntityCopyWith<_$_OfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
