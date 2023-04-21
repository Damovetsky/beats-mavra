// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_purchase_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePurchaseEntity {
  String get offerId => throw _privateConstructorUsedError;
  String get buyerId => throw _privateConstructorUsedError;
  String get authorId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePurchaseEntityCopyWith<CreatePurchaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePurchaseEntityCopyWith<$Res> {
  factory $CreatePurchaseEntityCopyWith(CreatePurchaseEntity value,
          $Res Function(CreatePurchaseEntity) then) =
      _$CreatePurchaseEntityCopyWithImpl<$Res, CreatePurchaseEntity>;
  @useResult
  $Res call({String offerId, String buyerId, String authorId});
}

/// @nodoc
class _$CreatePurchaseEntityCopyWithImpl<$Res,
        $Val extends CreatePurchaseEntity>
    implements $CreatePurchaseEntityCopyWith<$Res> {
  _$CreatePurchaseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? buyerId = null,
    Object? authorId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_CreatePurchaseEntityCopyWith<$Res>
    implements $CreatePurchaseEntityCopyWith<$Res> {
  factory _$$_CreatePurchaseEntityCopyWith(_$_CreatePurchaseEntity value,
          $Res Function(_$_CreatePurchaseEntity) then) =
      __$$_CreatePurchaseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String offerId, String buyerId, String authorId});
}

/// @nodoc
class __$$_CreatePurchaseEntityCopyWithImpl<$Res>
    extends _$CreatePurchaseEntityCopyWithImpl<$Res, _$_CreatePurchaseEntity>
    implements _$$_CreatePurchaseEntityCopyWith<$Res> {
  __$$_CreatePurchaseEntityCopyWithImpl(_$_CreatePurchaseEntity _value,
      $Res Function(_$_CreatePurchaseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offerId = null,
    Object? buyerId = null,
    Object? authorId = null,
  }) {
    return _then(_$_CreatePurchaseEntity(
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

class _$_CreatePurchaseEntity implements _CreatePurchaseEntity {
  const _$_CreatePurchaseEntity(
      {required this.offerId, required this.buyerId, required this.authorId});

  @override
  final String offerId;
  @override
  final String buyerId;
  @override
  final String authorId;

  @override
  String toString() {
    return 'CreatePurchaseEntity(offerId: $offerId, buyerId: $buyerId, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePurchaseEntity &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.buyerId, buyerId) || other.buyerId == buyerId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offerId, buyerId, authorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePurchaseEntityCopyWith<_$_CreatePurchaseEntity> get copyWith =>
      __$$_CreatePurchaseEntityCopyWithImpl<_$_CreatePurchaseEntity>(
          this, _$identity);
}

abstract class _CreatePurchaseEntity implements CreatePurchaseEntity {
  const factory _CreatePurchaseEntity(
      {required final String offerId,
      required final String buyerId,
      required final String authorId}) = _$_CreatePurchaseEntity;

  @override
  String get offerId;
  @override
  String get buyerId;
  @override
  String get authorId;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePurchaseEntityCopyWith<_$_CreatePurchaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
