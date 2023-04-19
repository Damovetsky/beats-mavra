// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PrivateUserEntity {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  List<String> get favorite => throw _privateConstructorUsedError;
  List<String> get bought => throw _privateConstructorUsedError;
  List<String> get created => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrivateUserEntityCopyWith<PrivateUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateUserEntityCopyWith<$Res> {
  factory $PrivateUserEntityCopyWith(
          PrivateUserEntity value, $Res Function(PrivateUserEntity) then) =
      _$PrivateUserEntityCopyWithImpl<$Res, PrivateUserEntity>;
  @useResult
  $Res call(
      {String id,
      String email,
      double balance,
      List<String> favorite,
      List<String> bought,
      List<String> created});
}

/// @nodoc
class _$PrivateUserEntityCopyWithImpl<$Res, $Val extends PrivateUserEntity>
    implements $PrivateUserEntityCopyWith<$Res> {
  _$PrivateUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? balance = null,
    Object? favorite = null,
    Object? bought = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateUserEntityCopyWith<$Res>
    implements $PrivateUserEntityCopyWith<$Res> {
  factory _$$_PrivateUserEntityCopyWith(_$_PrivateUserEntity value,
          $Res Function(_$_PrivateUserEntity) then) =
      __$$_PrivateUserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      double balance,
      List<String> favorite,
      List<String> bought,
      List<String> created});
}

/// @nodoc
class __$$_PrivateUserEntityCopyWithImpl<$Res>
    extends _$PrivateUserEntityCopyWithImpl<$Res, _$_PrivateUserEntity>
    implements _$$_PrivateUserEntityCopyWith<$Res> {
  __$$_PrivateUserEntityCopyWithImpl(
      _$_PrivateUserEntity _value, $Res Function(_$_PrivateUserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? balance = null,
    Object? favorite = null,
    Object? bought = null,
    Object? created = null,
  }) {
    return _then(_$_PrivateUserEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bought: null == bought
          ? _value._bought
          : bought // ignore: cast_nullable_to_non_nullable
              as List<String>,
      created: null == created
          ? _value._created
          : created // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PrivateUserEntity implements _PrivateUserEntity {
  const _$_PrivateUserEntity(
      {required this.id,
      required this.email,
      required this.balance,
      required final List<String> favorite,
      required final List<String> bought,
      required final List<String> created})
      : _favorite = favorite,
        _bought = bought,
        _created = created;

  @override
  final String id;
  @override
  final String email;
  @override
  final double balance;
  final List<String> _favorite;
  @override
  List<String> get favorite {
    if (_favorite is EqualUnmodifiableListView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorite);
  }

  final List<String> _bought;
  @override
  List<String> get bought {
    if (_bought is EqualUnmodifiableListView) return _bought;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bought);
  }

  final List<String> _created;
  @override
  List<String> get created {
    if (_created is EqualUnmodifiableListView) return _created;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_created);
  }

  @override
  String toString() {
    return 'PrivateUserEntity(id: $id, email: $email, balance: $balance, favorite: $favorite, bought: $bought, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._favorite, _favorite) &&
            const DeepCollectionEquality().equals(other._bought, _bought) &&
            const DeepCollectionEquality().equals(other._created, _created));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      balance,
      const DeepCollectionEquality().hash(_favorite),
      const DeepCollectionEquality().hash(_bought),
      const DeepCollectionEquality().hash(_created));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateUserEntityCopyWith<_$_PrivateUserEntity> get copyWith =>
      __$$_PrivateUserEntityCopyWithImpl<_$_PrivateUserEntity>(
          this, _$identity);
}

abstract class _PrivateUserEntity implements PrivateUserEntity {
  const factory _PrivateUserEntity(
      {required final String id,
      required final String email,
      required final double balance,
      required final List<String> favorite,
      required final List<String> bought,
      required final List<String> created}) = _$_PrivateUserEntity;

  @override
  String get id;
  @override
  String get email;
  @override
  double get balance;
  @override
  List<String> get favorite;
  @override
  List<String> get bought;
  @override
  List<String> get created;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateUserEntityCopyWith<_$_PrivateUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
