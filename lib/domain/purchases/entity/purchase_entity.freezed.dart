// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PurchaseEntity {
  String get purchaseId => throw _privateConstructorUsedError;
  String get offerId => throw _privateConstructorUsedError;
  String get buyerId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PurchaseEntityCopyWith<PurchaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseEntityCopyWith<$Res> {
  factory $PurchaseEntityCopyWith(
          PurchaseEntity value, $Res Function(PurchaseEntity) then) =
      _$PurchaseEntityCopyWithImpl<$Res, PurchaseEntity>;
  @useResult
  $Res call(
      {String purchaseId, String offerId, String buyerId, String authorId});
}

/// @nodoc
class _$PurchaseEntityCopyWithImpl<$Res, $Val extends PurchaseEntity>
    implements $PurchaseEntityCopyWith<$Res> {
  _$PurchaseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseId = null,
    Object? offerId = null,
    Object? buyerId = null,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
      purchaseId: null == purchaseId
          ? _value.purchaseId
          : purchaseId // ignore: cast_nullable_to_non_nullable
              as String,
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurchaseEntityCopyWith<$Res>
    implements $PurchaseEntityCopyWith<$Res> {
  factory _$$_PurchaseEntityCopyWith(
          _$_PurchaseEntity value, $Res Function(_$_PurchaseEntity) then) =
      __$$_PurchaseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String purchaseId, String offerId, String buyerId, String authorId});
}

/// @nodoc
class __$$_PurchaseEntityCopyWithImpl<$Res>
    extends _$PurchaseEntityCopyWithImpl<$Res, _$_PurchaseEntity>
    implements _$$_PurchaseEntityCopyWith<$Res> {
  __$$_PurchaseEntityCopyWithImpl(
      _$_PurchaseEntity _value, $Res Function(_$_PurchaseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? purchaseId = null,
    Object? offerId = null,
    Object? buyerId = null,
    Object? authorId = null,
  }) {
    return _then(_$_PurchaseEntity(
      purchaseId: null == purchaseId
          ? _value.purchaseId
          : purchaseId // ignore: cast_nullable_to_non_nullable
              as String,
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PurchaseEntity implements _PurchaseEntity {
  const _$_PurchaseEntity(
      {required this.purchaseId,
      required this.offerId,
      required this.buyerId,
      required this.authorId});

  @override
  final String purchaseId;
  @override
  final String offerId;
  @override
  final String buyerId;
  @override
  final String authorId;

  @override
  String toString() {
    return 'PurchaseEntity(purchaseId: $purchaseId, offerId: $offerId, buyerId: $buyerId, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseEntity &&
            (identical(other.purchaseId, purchaseId) ||
                other.purchaseId == purchaseId) &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.buyerId, buyerId) || other.buyerId == buyerId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, purchaseId, offerId, buyerId, authorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseEntityCopyWith<_$_PurchaseEntity> get copyWith =>
      __$$_PurchaseEntityCopyWithImpl<_$_PurchaseEntity>(this, _$identity);
}

abstract class _PurchaseEntity implements PurchaseEntity {
  const factory _PurchaseEntity(
      {required final String purchaseId,
      required final String offerId,
      required final String buyerId,
      required final String authorId}) = _$_PurchaseEntity;

  @override
  String get purchaseId;
  @override
  String get offerId;
  @override
  String get buyerId;
  @override
  String get authorId;
  @override
  @JsonKey(ignore: true)
  _$$_PurchaseEntityCopyWith<_$_PurchaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
