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
<<<<<<< HEAD
=======
  String get ref => throw _privateConstructorUsedError;
>>>>>>> 959ad90 (files service)
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
<<<<<<< HEAD
  $Res call({String fileId, UploadTask uploadTask});
=======
  $Res call({String fileId, String ref, UploadTask uploadTask});
>>>>>>> 959ad90 (files service)
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
<<<<<<< HEAD
=======
    Object? ref = null,
>>>>>>> 959ad90 (files service)
    Object? uploadTask = null,
  }) {
    return _then(_value.copyWith(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
<<<<<<< HEAD
=======
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
>>>>>>> 959ad90 (files service)
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
<<<<<<< HEAD
  $Res call({String fileId, UploadTask uploadTask});
=======
  $Res call({String fileId, String ref, UploadTask uploadTask});
>>>>>>> 959ad90 (files service)
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
<<<<<<< HEAD
=======
    Object? ref = null,
>>>>>>> 959ad90 (files service)
    Object? uploadTask = null,
  }) {
    return _then(_$_UploadFileModel(
      fileId: null == fileId
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
<<<<<<< HEAD
=======
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String,
>>>>>>> 959ad90 (files service)
      uploadTask: null == uploadTask
          ? _value.uploadTask
          : uploadTask // ignore: cast_nullable_to_non_nullable
              as UploadTask,
    ));
  }
}

/// @nodoc

class _$_UploadFileModel implements _UploadFileModel {
<<<<<<< HEAD
  const _$_UploadFileModel({required this.fileId, required this.uploadTask});
=======
  const _$_UploadFileModel(
      {required this.fileId, required this.ref, required this.uploadTask});
>>>>>>> 959ad90 (files service)

  @override
  final String fileId;
  @override
<<<<<<< HEAD
=======
  final String ref;
  @override
>>>>>>> 959ad90 (files service)
  final UploadTask uploadTask;

  @override
  String toString() {
<<<<<<< HEAD
    return 'UploadFileModel(fileId: $fileId, uploadTask: $uploadTask)';
=======
    return 'UploadFileModel(fileId: $fileId, ref: $ref, uploadTask: $uploadTask)';
>>>>>>> 959ad90 (files service)
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFileModel &&
            (identical(other.fileId, fileId) || other.fileId == fileId) &&
<<<<<<< HEAD
=======
            (identical(other.ref, ref) || other.ref == ref) &&
>>>>>>> 959ad90 (files service)
            (identical(other.uploadTask, uploadTask) ||
                other.uploadTask == uploadTask));
  }

  @override
<<<<<<< HEAD
  int get hashCode => Object.hash(runtimeType, fileId, uploadTask);
=======
  int get hashCode => Object.hash(runtimeType, fileId, ref, uploadTask);
>>>>>>> 959ad90 (files service)

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadFileModelCopyWith<_$_UploadFileModel> get copyWith =>
      __$$_UploadFileModelCopyWithImpl<_$_UploadFileModel>(this, _$identity);
}

abstract class _UploadFileModel implements UploadFileModel {
  const factory _UploadFileModel(
      {required final String fileId,
<<<<<<< HEAD
=======
      required final String ref,
>>>>>>> 959ad90 (files service)
      required final UploadTask uploadTask}) = _$_UploadFileModel;

  @override
  String get fileId;
  @override
<<<<<<< HEAD
=======
  String get ref;
  @override
>>>>>>> 959ad90 (files service)
  UploadTask get uploadTask;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFileModelCopyWith<_$_UploadFileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
