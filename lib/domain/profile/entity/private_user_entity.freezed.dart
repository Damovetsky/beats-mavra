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
  String get email => throw _privateConstructorUsedError;
  List<String> get my => throw _privateConstructorUsedError;
  List<String> get bought => throw _privateConstructorUsedError;
  List<String> get favorite => throw _privateConstructorUsedError;

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
      {String email,
      List<String> my,
      List<String> bought,
      List<String> favorite});
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
    Object? email = null,
    Object? my = null,
    Object? bought = null,
    Object? favorite = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      my: null == my
          ? _value.my
          : my // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
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
      {String email,
      List<String> my,
      List<String> bought,
      List<String> favorite});
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
    Object? email = null,
    Object? my = null,
    Object? bought = null,
    Object? favorite = null,
  }) {
    return _then(_$_PrivateUserEntity(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      my: null == my
          ? _value._my
          : my // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bought: null == bought
          ? _value._bought
          : bought // ignore: cast_nullable_to_non_nullable
              as List<String>,
      favorite: null == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_PrivateUserEntity implements _PrivateUserEntity {
  const _$_PrivateUserEntity(
      {required this.email,
      required final List<String> my,
      required final List<String> bought,
      required final List<String> favorite})
      : _my = my,
        _bought = bought,
        _favorite = favorite;

  @override
  final String email;
  final List<String> _my;
  @override
  List<String> get my {
    if (_my is EqualUnmodifiableListView) return _my;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_my);
  }

  final List<String> _bought;
  @override
  List<String> get bought {
    if (_bought is EqualUnmodifiableListView) return _bought;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bought);
  }

  final List<String> _favorite;
  @override
  List<String> get favorite {
    if (_favorite is EqualUnmodifiableListView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorite);
  }

  @override
  String toString() {
    return 'PrivateUserEntity(email: $email, my: $my, bought: $bought, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUserEntity &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._my, _my) &&
            const DeepCollectionEquality().equals(other._bought, _bought) &&
            const DeepCollectionEquality().equals(other._favorite, _favorite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      const DeepCollectionEquality().hash(_my),
      const DeepCollectionEquality().hash(_bought),
      const DeepCollectionEquality().hash(_favorite));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateUserEntityCopyWith<_$_PrivateUserEntity> get copyWith =>
      __$$_PrivateUserEntityCopyWithImpl<_$_PrivateUserEntity>(
          this, _$identity);
}

abstract class _PrivateUserEntity implements PrivateUserEntity {
  const factory _PrivateUserEntity(
      {required final String email,
      required final List<String> my,
      required final List<String> bought,
      required final List<String> favorite}) = _$_PrivateUserEntity;

  @override
  String get email;
  @override
  List<String> get my;
  @override
  List<String> get bought;
  @override
  List<String> get favorite;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateUserEntityCopyWith<_$_PrivateUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
