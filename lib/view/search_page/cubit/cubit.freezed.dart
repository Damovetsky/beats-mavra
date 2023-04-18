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
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) feed,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? feed,
    TResult? Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? feed,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) loading,
    required TResult Function(_FeedSearchState value) feed,
    required TResult Function(_FailureSearchState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? loading,
    TResult? Function(_FeedSearchState value)? feed,
    TResult? Function(_FailureSearchState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? loading,
    TResult Function(_FeedSearchState value)? feed,
    TResult Function(_FailureSearchState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) feed,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? feed,
    TResult? Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? feed,
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
    required TResult Function(_SearchState value) loading,
    required TResult Function(_FeedSearchState value) feed,
    required TResult Function(_FailureSearchState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? loading,
    TResult? Function(_FeedSearchState value)? feed,
    TResult? Function(_FailureSearchState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? loading,
    TResult Function(_FeedSearchState value)? feed,
    TResult Function(_FailureSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchState implements SearchState {
  const factory _SearchState() = _$_SearchState;
}

/// @nodoc
abstract class _$$_FeedSearchStateCopyWith<$Res> {
  factory _$$_FeedSearchStateCopyWith(
          _$_FeedSearchState value, $Res Function(_$_FeedSearchState) then) =
      __$$_FeedSearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BeatEntity> beats});
}

/// @nodoc
class __$$_FeedSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_FeedSearchState>
    implements _$$_FeedSearchStateCopyWith<$Res> {
  __$$_FeedSearchStateCopyWithImpl(
      _$_FeedSearchState _value, $Res Function(_$_FeedSearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beats = null,
  }) {
    return _then(_$_FeedSearchState(
      beats: null == beats
          ? _value._beats
          : beats // ignore: cast_nullable_to_non_nullable
              as List<BeatEntity>,
    ));
  }
}

/// @nodoc

class _$_FeedSearchState implements _FeedSearchState {
  const _$_FeedSearchState({required final List<BeatEntity> beats})
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
    return 'SearchState.feed(beats: $beats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedSearchState &&
            const DeepCollectionEquality().equals(other._beats, _beats));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_beats));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedSearchStateCopyWith<_$_FeedSearchState> get copyWith =>
      __$$_FeedSearchStateCopyWithImpl<_$_FeedSearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) feed,
    required TResult Function() failure,
  }) {
    return feed(beats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? feed,
    TResult? Function()? failure,
  }) {
    return feed?.call(beats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? feed,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (feed != null) {
      return feed(beats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchState value) loading,
    required TResult Function(_FeedSearchState value) feed,
    required TResult Function(_FailureSearchState value) failure,
  }) {
    return feed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? loading,
    TResult? Function(_FeedSearchState value)? feed,
    TResult? Function(_FailureSearchState value)? failure,
  }) {
    return feed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? loading,
    TResult Function(_FeedSearchState value)? feed,
    TResult Function(_FailureSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (feed != null) {
      return feed(this);
    }
    return orElse();
  }
}

abstract class _FeedSearchState implements SearchState {
  const factory _FeedSearchState({required final List<BeatEntity> beats}) =
      _$_FeedSearchState;

  List<BeatEntity> get beats;
  @JsonKey(ignore: true)
  _$$_FeedSearchStateCopyWith<_$_FeedSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureSearchStateCopyWith<$Res> {
  factory _$$_FailureSearchStateCopyWith(_$_FailureSearchState value,
          $Res Function(_$_FailureSearchState) then) =
      __$$_FailureSearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureSearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_FailureSearchState>
    implements _$$_FailureSearchStateCopyWith<$Res> {
  __$$_FailureSearchStateCopyWithImpl(
      _$_FailureSearchState _value, $Res Function(_$_FailureSearchState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FailureSearchState implements _FailureSearchState {
  const _$_FailureSearchState();

  @override
  String toString() {
    return 'SearchState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FailureSearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BeatEntity> beats) feed,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BeatEntity> beats)? feed,
    TResult? Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BeatEntity> beats)? feed,
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
    required TResult Function(_SearchState value) loading,
    required TResult Function(_FeedSearchState value) feed,
    required TResult Function(_FailureSearchState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchState value)? loading,
    TResult? Function(_FeedSearchState value)? feed,
    TResult? Function(_FailureSearchState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchState value)? loading,
    TResult Function(_FeedSearchState value)? feed,
    TResult Function(_FailureSearchState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureSearchState implements SearchState {
  const factory _FailureSearchState() = _$_FailureSearchState;
}
