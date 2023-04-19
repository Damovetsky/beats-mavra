// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserModel {
  String get id => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserModelCopyWith<UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserModelCopyWith<$Res> {
  factory $UpdateUserModelCopyWith(
          UpdateUserModel value, $Res Function(UpdateUserModel) then) =
      _$UpdateUserModelCopyWithImpl<$Res, UpdateUserModel>;
  @useResult
  $Res call({String id, String avatarUrl, String nickname, String description});
}

/// @nodoc
class _$UpdateUserModelCopyWithImpl<$Res, $Val extends UpdateUserModel>
    implements $UpdateUserModelCopyWith<$Res> {
  _$UpdateUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = null,
    Object? nickname = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_UpdateUserModelCopyWith<$Res>
    implements $UpdateUserModelCopyWith<$Res> {
  factory _$$_UpdateUserModelCopyWith(
          _$_UpdateUserModel value, $Res Function(_$_UpdateUserModel) then) =
      __$$_UpdateUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String avatarUrl, String nickname, String description});
}

/// @nodoc
class __$$_UpdateUserModelCopyWithImpl<$Res>
    extends _$UpdateUserModelCopyWithImpl<$Res, _$_UpdateUserModel>
    implements _$$_UpdateUserModelCopyWith<$Res> {
  __$$_UpdateUserModelCopyWithImpl(
      _$_UpdateUserModel _value, $Res Function(_$_UpdateUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = null,
    Object? nickname = null,
    Object? description = null,
  }) {
    return _then(_$_UpdateUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_UpdateUserModel implements _UpdateUserModel {
  const _$_UpdateUserModel(
      {required this.id,
      required this.avatarUrl,
      required this.nickname,
      required this.description});

  factory _$_UpdateUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateUserModelFromJson(json);

  @override
  final String id;
  @override
  final String avatarUrl;
  @override
  final String nickname;
  @override
  final String description;

  @override
  String toString() {
    return 'UpdateUserModel(id: $id, avatarUrl: $avatarUrl, nickname: $nickname, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateUserModel &&
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
  _$$_UpdateUserModelCopyWith<_$_UpdateUserModel> get copyWith =>
      __$$_UpdateUserModelCopyWithImpl<_$_UpdateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateUserModelToJson(
      this,
    );
  }
}

abstract class _UpdateUserModel implements UpdateUserModel {
  const factory _UpdateUserModel(
      {required final String id,
      required final String avatarUrl,
      required final String nickname,
      required final String description}) = _$_UpdateUserModel;

  factory _UpdateUserModel.fromJson(Map<String, dynamic> json) =
      _$_UpdateUserModel.fromJson;

  @override
  String get id;
  @override
  String get avatarUrl;
  @override
  String get nickname;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateUserModelCopyWith<_$_UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
