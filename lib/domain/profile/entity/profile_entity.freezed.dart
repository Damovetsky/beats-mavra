// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEntity {
  UserEntity get user => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res, ProfileEntity>;
  @useResult
  $Res call({UserEntity user, String email});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res, $Val extends ProfileEntity>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$_ProfileEntityCopyWith(
          _$_ProfileEntity value, $Res Function(_$_ProfileEntity) then) =
      __$$_ProfileEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserEntity user, String email});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res, _$_ProfileEntity>
    implements _$$_ProfileEntityCopyWith<$Res> {
  __$$_ProfileEntityCopyWithImpl(
      _$_ProfileEntity _value, $Res Function(_$_ProfileEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? email = null,
  }) {
    return _then(_$_ProfileEntity(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProfileEntity implements _ProfileEntity {
  const _$_ProfileEntity({required this.user, required this.email});

  @override
  final UserEntity user;
  @override
  final String email;

  @override
  String toString() {
    return 'ProfileEntity(user: $user, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEntity &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      __$$_ProfileEntityCopyWithImpl<_$_ProfileEntity>(this, _$identity);
}

abstract class _ProfileEntity implements ProfileEntity {
  const factory _ProfileEntity(
      {required final UserEntity user,
      required final String email}) = _$_ProfileEntity;

  @override
  UserEntity get user;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
