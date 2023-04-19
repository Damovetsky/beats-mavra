// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicUserModel _$PublicUserModelFromJson(Map<String, dynamic> json) {
  return _PublicUserModel.fromJson(json);
}

/// @nodoc
mixin _$PublicUserModel {
  String get id => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicUserModelCopyWith<PublicUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicUserModelCopyWith<$Res> {
  factory $PublicUserModelCopyWith(
          PublicUserModel value, $Res Function(PublicUserModel) then) =
      _$PublicUserModelCopyWithImpl<$Res, PublicUserModel>;
  @useResult
  $Res call(
      {String id, String? avatarUrl, String nickname, String description});
}

/// @nodoc
class _$PublicUserModelCopyWithImpl<$Res, $Val extends PublicUserModel>
    implements $PublicUserModelCopyWith<$Res> {
  _$PublicUserModelCopyWithImpl(this._value, this._then);

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
    Object? description = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublicUserModelCopyWith<$Res>
    implements $PublicUserModelCopyWith<$Res> {
  factory _$$_PublicUserModelCopyWith(
          _$_PublicUserModel value, $Res Function(_$_PublicUserModel) then) =
      __$$_PublicUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String? avatarUrl, String nickname, String description});
}

/// @nodoc
class __$$_PublicUserModelCopyWithImpl<$Res>
    extends _$PublicUserModelCopyWithImpl<$Res, _$_PublicUserModel>
    implements _$$_PublicUserModelCopyWith<$Res> {
  __$$_PublicUserModelCopyWithImpl(
      _$_PublicUserModel _value, $Res Function(_$_PublicUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? nickname = null,
    Object? description = null,
  }) {
    return _then(_$_PublicUserModel(
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicUserModel implements _PublicUserModel {
  const _$_PublicUserModel(
      {required this.id,
      required this.avatarUrl,
      required this.nickname,
      required this.description});

  factory _$_PublicUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_PublicUserModelFromJson(json);

  @override
  final String id;
  @override
  final String? avatarUrl;
  @override
  final String nickname;
  @override
  final String description;

  @override
  String toString() {
    return 'PublicUserModel(id: $id, avatarUrl: $avatarUrl, nickname: $nickname, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PublicUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, avatarUrl, nickname, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublicUserModelCopyWith<_$_PublicUserModel> get copyWith =>
      __$$_PublicUserModelCopyWithImpl<_$_PublicUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicUserModelToJson(
      this,
    );
  }
}

abstract class _PublicUserModel implements PublicUserModel {
  const factory _PublicUserModel(
      {required final String id,
      required final String? avatarUrl,
      required final String nickname,
      required final String description}) = _$_PublicUserModel;

  factory _PublicUserModel.fromJson(Map<String, dynamic> json) =
      _$_PublicUserModel.fromJson;

  @override
  String get id;
  @override
  String? get avatarUrl;
  @override
  String get nickname;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_PublicUserModelCopyWith<_$_PublicUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
