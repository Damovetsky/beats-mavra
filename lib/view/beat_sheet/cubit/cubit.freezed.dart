// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BeatSheetState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BeatEntity beatEntity) beat,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BeatEntity beatEntity)? beat,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BeatEntity beatEntity)? beat,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingBeatSheetState value) loading,
    required TResult Function(_BeatSheetState value) beat,
    required TResult Function(_FailureBeatSheetState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingBeatSheetState value)? loading,
    TResult? Function(_BeatSheetState value)? beat,
    TResult? Function(_FailureBeatSheetState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingBeatSheetState value)? loading,
    TResult Function(_BeatSheetState value)? beat,
    TResult Function(_FailureBeatSheetState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeatSheetStateCopyWith<$Res> {
  factory $BeatSheetStateCopyWith(
          BeatSheetState value, $Res Function(BeatSheetState) then) =
      _$BeatSheetStateCopyWithImpl<$Res, BeatSheetState>;
}

/// @nodoc
class _$BeatSheetStateCopyWithImpl<$Res, $Val extends BeatSheetState>
    implements $BeatSheetStateCopyWith<$Res> {
  _$BeatSheetStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingBeatSheetStateCopyWith<$Res> {
  factory _$$_LoadingBeatSheetStateCopyWith(_$_LoadingBeatSheetState value,
          $Res Function(_$_LoadingBeatSheetState) then) =
      __$$_LoadingBeatSheetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingBeatSheetStateCopyWithImpl<$Res>
    extends _$BeatSheetStateCopyWithImpl<$Res, _$_LoadingBeatSheetState>
    implements _$$_LoadingBeatSheetStateCopyWith<$Res> {
  __$$_LoadingBeatSheetStateCopyWithImpl(_$_LoadingBeatSheetState _value,
      $Res Function(_$_LoadingBeatSheetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingBeatSheetState implements _LoadingBeatSheetState {
  const _$_LoadingBeatSheetState();

  @override
  String toString() {
    return 'BeatSheetState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingBeatSheetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BeatEntity beatEntity) beat,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BeatEntity beatEntity)? beat,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BeatEntity beatEntity)? beat,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingBeatSheetState value) loading,
    required TResult Function(_BeatSheetState value) beat,
    required TResult Function(_FailureBeatSheetState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingBeatSheetState value)? loading,
    TResult? Function(_BeatSheetState value)? beat,
    TResult? Function(_FailureBeatSheetState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingBeatSheetState value)? loading,
    TResult Function(_BeatSheetState value)? beat,
    TResult Function(_FailureBeatSheetState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingBeatSheetState implements BeatSheetState {
  const factory _LoadingBeatSheetState() = _$_LoadingBeatSheetState;
}

/// @nodoc
abstract class _$$_BeatSheetStateCopyWith<$Res> {
  factory _$$_BeatSheetStateCopyWith(
          _$_BeatSheetState value, $Res Function(_$_BeatSheetState) then) =
      __$$_BeatSheetStateCopyWithImpl<$Res>;
  @useResult
  $Res call({BeatEntity beatEntity});

  $BeatEntityCopyWith<$Res> get beatEntity;
}

/// @nodoc
class __$$_BeatSheetStateCopyWithImpl<$Res>
    extends _$BeatSheetStateCopyWithImpl<$Res, _$_BeatSheetState>
    implements _$$_BeatSheetStateCopyWith<$Res> {
  __$$_BeatSheetStateCopyWithImpl(
      _$_BeatSheetState _value, $Res Function(_$_BeatSheetState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatEntity = null,
  }) {
    return _then(_$_BeatSheetState(
      beatEntity: null == beatEntity
          ? _value.beatEntity
          : beatEntity // ignore: cast_nullable_to_non_nullable
              as BeatEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BeatEntityCopyWith<$Res> get beatEntity {
    return $BeatEntityCopyWith<$Res>(_value.beatEntity, (value) {
      return _then(_value.copyWith(beatEntity: value));
    });
  }
}

/// @nodoc

class _$_BeatSheetState implements _BeatSheetState {
  const _$_BeatSheetState({required this.beatEntity});

  @override
  final BeatEntity beatEntity;

  @override
  String toString() {
    return 'BeatSheetState.beat(beatEntity: $beatEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatSheetState &&
            (identical(other.beatEntity, beatEntity) ||
                other.beatEntity == beatEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beatEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeatSheetStateCopyWith<_$_BeatSheetState> get copyWith =>
      __$$_BeatSheetStateCopyWithImpl<_$_BeatSheetState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BeatEntity beatEntity) beat,
    required TResult Function() failure,
  }) {
    return beat(beatEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BeatEntity beatEntity)? beat,
    TResult? Function()? failure,
  }) {
    return beat?.call(beatEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BeatEntity beatEntity)? beat,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (beat != null) {
      return beat(beatEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingBeatSheetState value) loading,
    required TResult Function(_BeatSheetState value) beat,
    required TResult Function(_FailureBeatSheetState value) failure,
  }) {
    return beat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingBeatSheetState value)? loading,
    TResult? Function(_BeatSheetState value)? beat,
    TResult? Function(_FailureBeatSheetState value)? failure,
  }) {
    return beat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingBeatSheetState value)? loading,
    TResult Function(_BeatSheetState value)? beat,
    TResult Function(_FailureBeatSheetState value)? failure,
    required TResult orElse(),
  }) {
    if (beat != null) {
      return beat(this);
    }
    return orElse();
  }
}

abstract class _BeatSheetState implements BeatSheetState {
  const factory _BeatSheetState({required final BeatEntity beatEntity}) =
      _$_BeatSheetState;

  BeatEntity get beatEntity;
  @JsonKey(ignore: true)
  _$$_BeatSheetStateCopyWith<_$_BeatSheetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureBeatSheetStateCopyWith<$Res> {
  factory _$$_FailureBeatSheetStateCopyWith(_$_FailureBeatSheetState value,
          $Res Function(_$_FailureBeatSheetState) then) =
      __$$_FailureBeatSheetStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureBeatSheetStateCopyWithImpl<$Res>
    extends _$BeatSheetStateCopyWithImpl<$Res, _$_FailureBeatSheetState>
    implements _$$_FailureBeatSheetStateCopyWith<$Res> {
  __$$_FailureBeatSheetStateCopyWithImpl(_$_FailureBeatSheetState _value,
      $Res Function(_$_FailureBeatSheetState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailureBeatSheetState implements _FailureBeatSheetState {
  const _$_FailureBeatSheetState();

  @override
  String toString() {
    return 'BeatSheetState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailureBeatSheetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(BeatEntity beatEntity) beat,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(BeatEntity beatEntity)? beat,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BeatEntity beatEntity)? beat,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingBeatSheetState value) loading,
    required TResult Function(_BeatSheetState value) beat,
    required TResult Function(_FailureBeatSheetState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingBeatSheetState value)? loading,
    TResult? Function(_BeatSheetState value)? beat,
    TResult? Function(_FailureBeatSheetState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingBeatSheetState value)? loading,
    TResult Function(_BeatSheetState value)? beat,
    TResult Function(_FailureBeatSheetState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureBeatSheetState implements BeatSheetState {
  const factory _FailureBeatSheetState() = _$_FailureBeatSheetState;
}
