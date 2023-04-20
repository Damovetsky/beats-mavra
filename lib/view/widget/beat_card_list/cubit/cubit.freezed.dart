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
mixin _$BeatCardListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeatCardListStateCopyWith<$Res> {
  factory $BeatCardListStateCopyWith(
          BeatCardListState value, $Res Function(BeatCardListState) then) =
      _$BeatCardListStateCopyWithImpl<$Res, BeatCardListState>;
}

/// @nodoc
class _$BeatCardListStateCopyWithImpl<$Res, $Val extends BeatCardListState>
    implements $BeatCardListStateCopyWith<$Res> {
  _$BeatCardListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BeatCardListLoadingStateCopyWith<$Res> {
  factory _$$_BeatCardListLoadingStateCopyWith(
          _$_BeatCardListLoadingState value,
          $Res Function(_$_BeatCardListLoadingState) then) =
      __$$_BeatCardListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BeatCardListLoadingStateCopyWithImpl<$Res>
    extends _$BeatCardListStateCopyWithImpl<$Res, _$_BeatCardListLoadingState>
    implements _$$_BeatCardListLoadingStateCopyWith<$Res> {
  __$$_BeatCardListLoadingStateCopyWithImpl(_$_BeatCardListLoadingState _value,
      $Res Function(_$_BeatCardListLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BeatCardListLoadingState implements _BeatCardListLoadingState {
  const _$_BeatCardListLoadingState();

  @override
  String toString() {
    return 'BeatCardListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatCardListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
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
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BeatCardListLoadingState implements BeatCardListState {
  const factory _BeatCardListLoadingState() = _$_BeatCardListLoadingState;
}

/// @nodoc
abstract class _$$_BeatCardListStateCopyWith<$Res> {
  factory _$$_BeatCardListStateCopyWith(_$_BeatCardListState value,
          $Res Function(_$_BeatCardListState) then) =
      __$$_BeatCardListStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BeatEntity> beats});
}

/// @nodoc
class __$$_BeatCardListStateCopyWithImpl<$Res>
    extends _$BeatCardListStateCopyWithImpl<$Res, _$_BeatCardListState>
    implements _$$_BeatCardListStateCopyWith<$Res> {
  __$$_BeatCardListStateCopyWithImpl(
      _$_BeatCardListState _value, $Res Function(_$_BeatCardListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beats = null,
  }) {
    return _then(_$_BeatCardListState(
      beats: null == beats
          ? _value._beats
          : beats // ignore: cast_nullable_to_non_nullable
              as List<BeatEntity>,
    ));
  }
}

/// @nodoc

class _$_BeatCardListState implements _BeatCardListState {
  const _$_BeatCardListState({required final List<BeatEntity> beats})
      : _beats = beats;

  final List<BeatEntity> _beats;
  @override
  List<BeatEntity> get beats {
    if (_beats is EqualUnmodifiableListView) return _beats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beats);
  }

  @override
  String toString() {
    return 'BeatCardListState.beats(beats: $beats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatCardListState &&
            const DeepCollectionEquality().equals(other._beats, _beats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_beats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeatCardListStateCopyWith<_$_BeatCardListState> get copyWith =>
      __$$_BeatCardListStateCopyWithImpl<_$_BeatCardListState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) {
    return beats(this.beats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) {
    return beats?.call(this.beats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (beats != null) {
      return beats(this.beats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) {
    return beats(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) {
    return beats?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) {
    if (beats != null) {
      return beats(this);
    }
    return orElse();
  }
}

abstract class _BeatCardListState implements BeatCardListState {
  const factory _BeatCardListState({required final List<BeatEntity> beats}) =
      _$_BeatCardListState;

  List<BeatEntity> get beats;
  @JsonKey(ignore: true)
  _$$_BeatCardListStateCopyWith<_$_BeatCardListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BeatPlayableBeatStateCopyWith<$Res> {
  factory _$$_BeatPlayableBeatStateCopyWith(_$_BeatPlayableBeatState value,
          $Res Function(_$_BeatPlayableBeatState) then) =
      __$$_BeatPlayableBeatStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String beatId, BeatPlayingStatus status});
}

/// @nodoc
class __$$_BeatPlayableBeatStateCopyWithImpl<$Res>
    extends _$BeatCardListStateCopyWithImpl<$Res, _$_BeatPlayableBeatState>
    implements _$$_BeatPlayableBeatStateCopyWith<$Res> {
  __$$_BeatPlayableBeatStateCopyWithImpl(_$_BeatPlayableBeatState _value,
      $Res Function(_$_BeatPlayableBeatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatId = null,
    Object? status = null,
  }) {
    return _then(_$_BeatPlayableBeatState(
      beatId: null == beatId
          ? _value.beatId
          : beatId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BeatPlayingStatus,
    ));
  }
}

/// @nodoc

class _$_BeatPlayableBeatState implements _BeatPlayableBeatState {
  const _$_BeatPlayableBeatState({required this.beatId, required this.status});

  @override
  final String beatId;
  @override
  final BeatPlayingStatus status;

  @override
  String toString() {
    return 'BeatCardListState.playableBeat(beatId: $beatId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatPlayableBeatState &&
            (identical(other.beatId, beatId) || other.beatId == beatId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, beatId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BeatPlayableBeatStateCopyWith<_$_BeatPlayableBeatState> get copyWith =>
      __$$_BeatPlayableBeatStateCopyWithImpl<_$_BeatPlayableBeatState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) {
    return playableBeat(beatId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) {
    return playableBeat?.call(beatId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (playableBeat != null) {
      return playableBeat(beatId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) {
    return playableBeat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) {
    return playableBeat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) {
    if (playableBeat != null) {
      return playableBeat(this);
    }
    return orElse();
  }
}

abstract class _BeatPlayableBeatState implements BeatCardListState {
  const factory _BeatPlayableBeatState(
      {required final String beatId,
      required final BeatPlayingStatus status}) = _$_BeatPlayableBeatState;

  String get beatId;
  BeatPlayingStatus get status;
  @JsonKey(ignore: true)
  _$$_BeatPlayableBeatStateCopyWith<_$_BeatPlayableBeatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BeatPlayableBeatStopStateCopyWith<$Res> {
  factory _$$_BeatPlayableBeatStopStateCopyWith(
          _$_BeatPlayableBeatStopState value,
          $Res Function(_$_BeatPlayableBeatStopState) then) =
      __$$_BeatPlayableBeatStopStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BeatPlayableBeatStopStateCopyWithImpl<$Res>
    extends _$BeatCardListStateCopyWithImpl<$Res, _$_BeatPlayableBeatStopState>
    implements _$$_BeatPlayableBeatStopStateCopyWith<$Res> {
  __$$_BeatPlayableBeatStopStateCopyWithImpl(
      _$_BeatPlayableBeatStopState _value,
      $Res Function(_$_BeatPlayableBeatStopState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BeatPlayableBeatStopState implements _BeatPlayableBeatStopState {
  const _$_BeatPlayableBeatStopState();

  @override
  String toString() {
    return 'BeatCardListState.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeatPlayableBeatStopState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class _BeatPlayableBeatStopState implements BeatCardListState {
  const factory _BeatPlayableBeatStopState() = _$_BeatPlayableBeatStopState;
}

/// @nodoc
abstract class _$$_FailureBeatCardListStateCopyWith<$Res> {
  factory _$$_FailureBeatCardListStateCopyWith(
          _$_FailureBeatCardListState value,
          $Res Function(_$_FailureBeatCardListState) then) =
      __$$_FailureBeatCardListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureBeatCardListStateCopyWithImpl<$Res>
    extends _$BeatCardListStateCopyWithImpl<$Res, _$_FailureBeatCardListState>
    implements _$$_FailureBeatCardListStateCopyWith<$Res> {
  __$$_FailureBeatCardListStateCopyWithImpl(_$_FailureBeatCardListState _value,
      $Res Function(_$_FailureBeatCardListState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailureBeatCardListState implements _FailureBeatCardListState {
  const _$_FailureBeatCardListState();

  @override
  String toString() {
    return 'BeatCardListState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureBeatCardListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) beats,
    required TResult Function(String beatId, BeatPlayingStatus status)
        playableBeat,
    required TResult Function() stop,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? beats,
    TResult? Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult? Function()? stop,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? beats,
    TResult Function(String beatId, BeatPlayingStatus status)? playableBeat,
    TResult Function()? stop,
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
    required TResult Function(_BeatCardListLoadingState value) loading,
    required TResult Function(_BeatCardListState value) beats,
    required TResult Function(_BeatPlayableBeatState value) playableBeat,
    required TResult Function(_BeatPlayableBeatStopState value) stop,
    required TResult Function(_FailureBeatCardListState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BeatCardListLoadingState value)? loading,
    TResult? Function(_BeatCardListState value)? beats,
    TResult? Function(_BeatPlayableBeatState value)? playableBeat,
    TResult? Function(_BeatPlayableBeatStopState value)? stop,
    TResult? Function(_FailureBeatCardListState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BeatCardListLoadingState value)? loading,
    TResult Function(_BeatCardListState value)? beats,
    TResult Function(_BeatPlayableBeatState value)? playableBeat,
    TResult Function(_BeatPlayableBeatStopState value)? stop,
    TResult Function(_FailureBeatCardListState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureBeatCardListState implements BeatCardListState {
  const factory _FailureBeatCardListState() = _$_FailureBeatCardListState;
}
