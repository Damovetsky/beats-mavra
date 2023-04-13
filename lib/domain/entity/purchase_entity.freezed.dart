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
  String get id => throw _privateConstructorUsedError;
  String get buyerId => throw _privateConstructorUsedError;
  String get sellerId => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get license => throw _privateConstructorUsedError;
  List<String> get fileTypes => throw _privateConstructorUsedError;
  int get cost => throw _privateConstructorUsedError;

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
      {String id,
      String buyerId,
      String sellerId,
      String description,
      DateTime timestamp,
      String license,
      List<String> fileTypes,
      int cost});
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
    Object? id = null,
    Object? buyerId = null,
    Object? sellerId = null,
    Object? description = null,
    Object? timestamp = null,
    Object? license = null,
    Object? fileTypes = null,
    Object? cost = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      fileTypes: null == fileTypes
          ? _value.fileTypes
          : fileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PurshaseEntityCopyWith<$Res>
    implements $PurchaseEntityCopyWith<$Res> {
  factory _$$_PurshaseEntityCopyWith(
          _$_PurshaseEntity value, $Res Function(_$_PurshaseEntity) then) =
      __$$_PurshaseEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String buyerId,
      String sellerId,
      String description,
      DateTime timestamp,
      String license,
      List<String> fileTypes,
      int cost});
}

/// @nodoc
class __$$_PurshaseEntityCopyWithImpl<$Res>
    extends _$PurchaseEntityCopyWithImpl<$Res, _$_PurshaseEntity>
    implements _$$_PurshaseEntityCopyWith<$Res> {
  __$$_PurshaseEntityCopyWithImpl(
      _$_PurshaseEntity _value, $Res Function(_$_PurshaseEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? buyerId = null,
    Object? sellerId = null,
    Object? description = null,
    Object? timestamp = null,
    Object? license = null,
    Object? fileTypes = null,
    Object? cost = null,
  }) {
    return _then(_$_PurshaseEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      buyerId: null == buyerId
          ? _value.buyerId
          : buyerId // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: null == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      license: null == license
          ? _value.license
          : license // ignore: cast_nullable_to_non_nullable
              as String,
      fileTypes: null == fileTypes
          ? _value._fileTypes
          : fileTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      cost: null == cost
          ? _value.cost
          : cost // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PurshaseEntity implements _PurshaseEntity {
  const _$_PurshaseEntity(
      {required this.id,
      required this.buyerId,
      required this.sellerId,
      required this.description,
      required this.timestamp,
      required this.license,
      required final List<String> fileTypes,
      required this.cost})
      : _fileTypes = fileTypes;

  @override
  final String id;
  @override
  final String buyerId;
  @override
  final String sellerId;
  @override
  final String description;
  @override
  final DateTime timestamp;
  @override
  final String license;
  final List<String> _fileTypes;
  @override
  List<String> get fileTypes {
    if (_fileTypes is EqualUnmodifiableListView) return _fileTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileTypes);
  }

  @override
  final int cost;

  @override
  String toString() {
    return 'PurchaseEntity(id: $id, buyerId: $buyerId, sellerId: $sellerId, description: $description, timestamp: $timestamp, license: $license, fileTypes: $fileTypes, cost: $cost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurshaseEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.buyerId, buyerId) || other.buyerId == buyerId) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.license, license) || other.license == license) &&
            const DeepCollectionEquality()
                .equals(other._fileTypes, _fileTypes) &&
            (identical(other.cost, cost) || other.cost == cost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      buyerId,
      sellerId,
      description,
      timestamp,
      license,
      const DeepCollectionEquality().hash(_fileTypes),
      cost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurshaseEntityCopyWith<_$_PurshaseEntity> get copyWith =>
      __$$_PurshaseEntityCopyWithImpl<_$_PurshaseEntity>(this, _$identity);
}

abstract class _PurshaseEntity implements PurchaseEntity {
  const factory _PurshaseEntity(
      {required final String id,
      required final String buyerId,
      required final String sellerId,
      required final String description,
      required final DateTime timestamp,
      required final String license,
      required final List<String> fileTypes,
      required final int cost}) = _$_PurshaseEntity;

  @override
  String get id;
  @override
  String get buyerId;
  @override
  String get sellerId;
  @override
  String get description;
  @override
  DateTime get timestamp;
  @override
  String get license;
  @override
  List<String> get fileTypes;
  @override
  int get cost;
  @override
  @JsonKey(ignore: true)
  _$$_PurshaseEntityCopyWith<_$_PurshaseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
