// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PublicUserEntity {
  String get id => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PublicUserEntityCopyWith<PublicUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicUserEntityCopyWith<$Res> {
  factory $PublicUserEntityCopyWith(
          PublicUserEntity value, $Res Function(PublicUserEntity) then) =
      _$PublicUserEntityCopyWithImpl<$Res, PublicUserEntity>;
  @useResult
  $Res call(
      {String id, String? avatarUrl, String nickname, String? description});
}

/// @nodoc
class _$PublicUserEntityCopyWithImpl<$Res, $Val extends PublicUserEntity>
    implements $PublicUserEntityCopyWith<$Res> {
  _$PublicUserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? nickname = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublicUserEntityCopyWith<$Res>
    implements $PublicUserEntityCopyWith<$Res> {
  factory _$$_PublicUserEntityCopyWith(
          _$_PublicUserEntity value, $Res Function(_$_PublicUserEntity) then) =
      __$$_PublicUserEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? avatarUrl, String nickname, String? description});
}

/// @nodoc
class __$$_PublicUserEntityCopyWithImpl<$Res>
    extends _$PublicUserEntityCopyWithImpl<$Res, _$_PublicUserEntity>
    implements _$$_PublicUserEntityCopyWith<$Res> {
  __$$_PublicUserEntityCopyWithImpl(
      _$_PublicUserEntity _value, $Res Function(_$_PublicUserEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? nickname = null,
    Object? description = freezed,
  }) {
    return _then(_$_PublicUserEntity(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PublicUserEntity implements _PublicUserEntity {
  const _$_PublicUserEntity(
      {required this.id,
      required this.avatarUrl,
      required this.nickname,
      required this.description});

  @override
  final String id;
  @override
  final String? avatarUrl;
  @override
  final String nickname;
  @override
  final String? description;

  @override
  String toString() {
    return 'PublicUserEntity(id: $id, avatarUrl: $avatarUrl, nickname: $nickname, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicUserEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarUrl, nickname, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublicUserEntityCopyWith<_$_PublicUserEntity> get copyWith =>
      __$$_PublicUserEntityCopyWithImpl<_$_PublicUserEntity>(this, _$identity);
}

abstract class _PublicUserEntity implements PublicUserEntity {
  const factory _PublicUserEntity(
      {required final String id,
      required final String? avatarUrl,
      required final String nickname,
      required final String? description}) = _$_PublicUserEntity;

  @override
  String get id;
  @override
  String? get avatarUrl;
  @override
  String get nickname;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_PublicUserEntityCopyWith<_$_PublicUserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
