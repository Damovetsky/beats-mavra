// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beat_files.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeatViewObject {
  File get file => throw _privateConstructorUsedError;
  TextEditingController get priceController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeatViewObjectCopyWith<BeatViewObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeatViewObjectCopyWith<$Res> {
  factory $BeatViewObjectCopyWith(
          BeatViewObject value, $Res Function(BeatViewObject) then) =
      _$BeatViewObjectCopyWithImpl<$Res, BeatViewObject>;
  @useResult
  $Res call({File file, TextEditingController priceController});
}

/// @nodoc
class _$BeatViewObjectCopyWithImpl<$Res, $Val extends BeatViewObject>
    implements $BeatViewObjectCopyWith<$Res> {
  _$BeatViewObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? priceController = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      priceController: null == priceController
          ? _value.priceController
          : priceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BeatViewObjectCopyWith<$Res>
    implements $BeatViewObjectCopyWith<$Res> {
  factory _$$_BeatViewObjectCopyWith(
          _$_BeatViewObject value, $Res Function(_$_BeatViewObject) then) =
      __$$_BeatViewObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File file, TextEditingController priceController});
}

/// @nodoc
class __$$_BeatViewObjectCopyWithImpl<$Res>
    extends _$BeatViewObjectCopyWithImpl<$Res, _$_BeatViewObject>
    implements _$$_BeatViewObjectCopyWith<$Res> {
  __$$_BeatViewObjectCopyWithImpl(
      _$_BeatViewObject _value, $Res Function(_$_BeatViewObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? priceController = null,
  }) {
    return _then(_$_BeatViewObject(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      priceController: null == priceController
          ? _value.priceController
          : priceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_BeatViewObject implements _BeatViewObject {
  const _$_BeatViewObject({required this.file, required this.priceController});

  @override
  final File file;
  @override
  final TextEditingController priceController;

  @override
  String toString() {
    return 'BeatViewObject(file: $file, priceController: $priceController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatViewObject &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.priceController, priceController) ||
                other.priceController == priceController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, priceController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeatViewObjectCopyWith<_$_BeatViewObject> get copyWith =>
      __$$_BeatViewObjectCopyWithImpl<_$_BeatViewObject>(this, _$identity);
}

abstract class _BeatViewObject implements BeatViewObject {
  const factory _BeatViewObject(
          {required final File file,
          required final TextEditingController priceController}) =
      _$_BeatViewObject;

  @override
  File get file;
  @override
  TextEditingController get priceController;
  @override
  @JsonKey(ignore: true)
  _$$_BeatViewObjectCopyWith<_$_BeatViewObject> get copyWith =>
      throw _privateConstructorUsedError;
}
