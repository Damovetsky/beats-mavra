// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadFileModel {
  String get fileId => throw _privateConstructorUsedError;
  UploadTask get uploadTask => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadFileModelCopyWith<UploadFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFileModelCopyWith<$Res> {
  factory $UploadFileModelCopyWith(
          UploadFileModel value, $Res Function(UploadFileModel) then) =
      _$UploadFileModelCopyWithImpl<$Res, UploadFileModel>;
  @useResult
  $Res call({String fileId, UploadTask uploadTask});
}

/// @nodoc
class _$UploadFileModelCopyWithImpl<$Res, $Val extends UploadFileModel>
    implements $UploadFileModelCopyWith<$Res> {
  _$UploadFileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? uploadTask = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadTask: null == uploadTask
          ? _value.uploadTask
          : uploadTask // ignore: cast_nullable_to_non_nullable
              as UploadTask,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UploadFileModelCopyWith<$Res>
    implements $UploadFileModelCopyWith<$Res> {
  factory _$$_UploadFileModelCopyWith(
          _$_UploadFileModel value, $Res Function(_$_UploadFileModel) then) =
      __$$_UploadFileModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String fileId, UploadTask uploadTask});
}

/// @nodoc
class __$$_UploadFileModelCopyWithImpl<$Res>
    extends _$UploadFileModelCopyWithImpl<$Res, _$_UploadFileModel>
    implements _$$_UploadFileModelCopyWith<$Res> {
  __$$_UploadFileModelCopyWithImpl(
      _$_UploadFileModel _value, $Res Function(_$_UploadFileModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileId = null,
    Object? uploadTask = null,
  }) {
    return _then(_$_UploadFileModel(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      uploadTask: null == uploadTask
          ? _value.uploadTask
          : uploadTask // ignore: cast_nullable_to_non_nullable
              as UploadTask,
    ));
  }
}

/// @nodoc

class _$_UploadFileModel implements _UploadFileModel {
  const _$_UploadFileModel({required this.fileId, required this.uploadTask});

  @override
  final String fileId;
  @override
  final UploadTask uploadTask;

  @override
  String toString() {
    return 'UploadFileModel(fileId: $fileId, uploadTask: $uploadTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileModel &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
            (identical(other.uploadTask, uploadTask) ||
                other.uploadTask == uploadTask));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fileId, uploadTask);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileModelCopyWith<_$_UploadFileModel> get copyWith =>
      __$$_UploadFileModelCopyWithImpl<_$_UploadFileModel>(this, _$identity);
}

abstract class _UploadFileModel implements UploadFileModel {
  const factory _UploadFileModel(
      {required final String fileId,
      required final UploadTask uploadTask}) = _$_UploadFileModel;

  @override
  String get fileId;
  @override
  UploadTask get uploadTask;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileModelCopyWith<_$_UploadFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
