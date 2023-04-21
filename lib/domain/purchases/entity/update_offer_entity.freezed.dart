// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_offer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateOfferEntity {
  String get beatId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;
  String get licenseType => throw _privateConstructorUsedError;
  String get fileType => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateOfferEntityCopyWith<UpdateOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateOfferEntityCopyWith<$Res> {
  factory $UpdateOfferEntityCopyWith(
          UpdateOfferEntity value, $Res Function(UpdateOfferEntity) then) =
      _$UpdateOfferEntityCopyWithImpl<$Res, UpdateOfferEntity>;
  @useResult
  $Res call(
      {String beatId,
      String authorId,
      String licenseType,
      String fileType,
      int price});
}

/// @nodoc
class _$UpdateOfferEntityCopyWithImpl<$Res, $Val extends UpdateOfferEntity>
    implements $UpdateOfferEntityCopyWith<$Res> {
  _$UpdateOfferEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatId = null,
    Object? authorId = null,
    Object? licenseType = null,
    Object? fileType = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_UpdateOfferEntityCopyWith<$Res>
    implements $UpdateOfferEntityCopyWith<$Res> {
  factory _$$_UpdateOfferEntityCopyWith(_$_UpdateOfferEntity value,
          $Res Function(_$_UpdateOfferEntity) then) =
      __$$_UpdateOfferEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String beatId,
      String authorId,
      String licenseType,
      String fileType,
      int price});
}

/// @nodoc
class __$$_UpdateOfferEntityCopyWithImpl<$Res>
    extends _$UpdateOfferEntityCopyWithImpl<$Res, _$_UpdateOfferEntity>
    implements _$$_UpdateOfferEntityCopyWith<$Res> {
  __$$_UpdateOfferEntityCopyWithImpl(
      _$_UpdateOfferEntity _value, $Res Function(_$_UpdateOfferEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatId = null,
    Object? authorId = null,
    Object? licenseType = null,
    Object? fileType = null,
    Object? price = null,
  }) {
    return _then(_$_UpdateOfferEntity(
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

class _$_UpdateOfferEntity implements _UpdateOfferEntity {
  const _$_UpdateOfferEntity(
      {required this.beatId,
      required this.authorId,
      required this.licenseType,
      required this.fileType,
      required this.price});

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
    return 'UpdateOfferEntity(beatId: $beatId, authorId: $authorId, licenseType: $licenseType, fileType: $fileType, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateOfferEntity &&
            (identical(other.beatId, beatId) || other.beatId == beatId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.licenseType, licenseType) ||
                other.licenseType == licenseType) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, beatId, authorId, licenseType, fileType, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateOfferEntityCopyWith<_$_UpdateOfferEntity> get copyWith =>
      __$$_UpdateOfferEntityCopyWithImpl<_$_UpdateOfferEntity>(
          this, _$identity);
}

abstract class _UpdateOfferEntity implements UpdateOfferEntity {
  const factory _UpdateOfferEntity(
      {required final String beatId,
      required final String authorId,
      required final String licenseType,
      required final String fileType,
      required final int price}) = _$_UpdateOfferEntity;

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
  _$$_UpdateOfferEntityCopyWith<_$_UpdateOfferEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
