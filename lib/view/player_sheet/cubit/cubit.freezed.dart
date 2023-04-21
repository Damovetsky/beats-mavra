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
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BeatPlayingStatus status,
            PublicUserEntity? author, BeatEntity entity, File beatFile)
        player,
    required TResult Function(String title, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult? Function(String title, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult Function(String title, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerShrinkedLoadingState value) loading,
    required TResult Function(_PlayerState value) player,
    required TResult Function(_PlayerFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerShrinkedLoadingState value)? loading,
    TResult? Function(_PlayerState value)? player,
    TResult? Function(_PlayerFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerShrinkedLoadingState value)? loading,
    TResult Function(_PlayerState value)? player,
    TResult Function(_PlayerFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PlayerInitialStateCopyWith<$Res> {
  factory _$$_PlayerInitialStateCopyWith(_$_PlayerInitialState value,
          $Res Function(_$_PlayerInitialState) then) =
      __$$_PlayerInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerInitialStateCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$_PlayerInitialState>
    implements _$$_PlayerInitialStateCopyWith<$Res> {
  __$$_PlayerInitialStateCopyWithImpl(
      _$_PlayerInitialState _value, $Res Function(_$_PlayerInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerInitialState implements _PlayerInitialState {
  const _$_PlayerInitialState();

  @override
  String toString() {
    return 'PlayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayerInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BeatPlayingStatus status,
            PublicUserEntity? author, BeatEntity entity, File beatFile)
        player,
    required TResult Function(String title, String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult? Function(String title, String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult Function(String title, String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerShrinkedLoadingState value) loading,
    required TResult Function(_PlayerState value) player,
    required TResult Function(_PlayerFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerShrinkedLoadingState value)? loading,
    TResult? Function(_PlayerState value)? player,
    TResult? Function(_PlayerFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerShrinkedLoadingState value)? loading,
    TResult Function(_PlayerState value)? player,
    TResult Function(_PlayerFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PlayerInitialState implements PlayerState {
  const factory _PlayerInitialState() = _$_PlayerInitialState;
}

/// @nodoc
abstract class _$$_PlayerShrinkedLoadingStateCopyWith<$Res> {
  factory _$$_PlayerShrinkedLoadingStateCopyWith(
          _$_PlayerShrinkedLoadingState value,
          $Res Function(_$_PlayerShrinkedLoadingState) then) =
      __$$_PlayerShrinkedLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerShrinkedLoadingStateCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$_PlayerShrinkedLoadingState>
    implements _$$_PlayerShrinkedLoadingStateCopyWith<$Res> {
  __$$_PlayerShrinkedLoadingStateCopyWithImpl(
      _$_PlayerShrinkedLoadingState _value,
      $Res Function(_$_PlayerShrinkedLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerShrinkedLoadingState implements _PlayerShrinkedLoadingState {
  const _$_PlayerShrinkedLoadingState();

  @override
  String toString() {
    return 'PlayerState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerShrinkedLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BeatPlayingStatus status,
            PublicUserEntity? author, BeatEntity entity, File beatFile)
        player,
    required TResult Function(String title, String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult? Function(String title, String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult Function(String title, String message)? failure,
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
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerShrinkedLoadingState value) loading,
    required TResult Function(_PlayerState value) player,
    required TResult Function(_PlayerFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerShrinkedLoadingState value)? loading,
    TResult? Function(_PlayerState value)? player,
    TResult? Function(_PlayerFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerShrinkedLoadingState value)? loading,
    TResult Function(_PlayerState value)? player,
    TResult Function(_PlayerFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PlayerShrinkedLoadingState implements PlayerState {
  const factory _PlayerShrinkedLoadingState() = _$_PlayerShrinkedLoadingState;
}

/// @nodoc
abstract class _$$_PlayerStateCopyWith<$Res> {
  factory _$$_PlayerStateCopyWith(
          _$_PlayerState value, $Res Function(_$_PlayerState) then) =
      __$$_PlayerStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BeatPlayingStatus status,
      PublicUserEntity? author,
      BeatEntity entity,
      File beatFile});

  $PublicUserEntityCopyWith<$Res>? get author;
  $BeatEntityCopyWith<$Res> get entity;
}

/// @nodoc
class __$$_PlayerStateCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$_PlayerState>
    implements _$$_PlayerStateCopyWith<$Res> {
  __$$_PlayerStateCopyWithImpl(
      _$_PlayerState _value, $Res Function(_$_PlayerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? author = freezed,
    Object? entity = null,
    Object? beatFile = null,
  }) {
    return _then(_$_PlayerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BeatPlayingStatus,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as PublicUserEntity?,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as BeatEntity,
      beatFile: null == beatFile
          ? _value.beatFile
          : beatFile // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicUserEntityCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $PublicUserEntityCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BeatEntityCopyWith<$Res> get entity {
    return $BeatEntityCopyWith<$Res>(_value.entity, (value) {
      return _then(_value.copyWith(entity: value));
    });
  }
}

/// @nodoc

class _$_PlayerState implements _PlayerState {
  const _$_PlayerState(
      {required this.status,
      required this.author,
      required this.entity,
      required this.beatFile});

  @override
  final BeatPlayingStatus status;
  @override
  final PublicUserEntity? author;
  @override
  final BeatEntity entity;
  @override
  final File beatFile;

  @override
  String toString() {
    return 'PlayerState.player(status: $status, author: $author, entity: $entity, beatFile: $beatFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.beatFile, beatFile) ||
                other.beatFile == beatFile));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, author, entity, beatFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith =>
      __$$_PlayerStateCopyWithImpl<_$_PlayerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BeatPlayingStatus status,
            PublicUserEntity? author, BeatEntity entity, File beatFile)
        player,
    required TResult Function(String title, String message) failure,
  }) {
    return player(status, author, entity, beatFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult? Function(String title, String message)? failure,
  }) {
    return player?.call(status, author, entity, beatFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult Function(String title, String message)? failure,
    required TResult orElse(),
  }) {
    if (player != null) {
      return player(status, author, entity, beatFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerShrinkedLoadingState value) loading,
    required TResult Function(_PlayerState value) player,
    required TResult Function(_PlayerFailureState value) failure,
  }) {
    return player(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerShrinkedLoadingState value)? loading,
    TResult? Function(_PlayerState value)? player,
    TResult? Function(_PlayerFailureState value)? failure,
  }) {
    return player?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerShrinkedLoadingState value)? loading,
    TResult Function(_PlayerState value)? player,
    TResult Function(_PlayerFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (player != null) {
      return player(this);
    }
    return orElse();
  }
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {required final BeatPlayingStatus status,
      required final PublicUserEntity? author,
      required final BeatEntity entity,
      required final File beatFile}) = _$_PlayerState;

  BeatPlayingStatus get status;
  PublicUserEntity? get author;
  BeatEntity get entity;
  File get beatFile;
  @JsonKey(ignore: true)
  _$$_PlayerStateCopyWith<_$_PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PlayerFailureStateCopyWith<$Res> {
  factory _$$_PlayerFailureStateCopyWith(_$_PlayerFailureState value,
          $Res Function(_$_PlayerFailureState) then) =
      __$$_PlayerFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String message});
}

/// @nodoc
class __$$_PlayerFailureStateCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$_PlayerFailureState>
    implements _$$_PlayerFailureStateCopyWith<$Res> {
  __$$_PlayerFailureStateCopyWithImpl(
      _$_PlayerFailureState _value, $Res Function(_$_PlayerFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? message = null,
  }) {
    return _then(_$_PlayerFailureState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlayerFailureState implements _PlayerFailureState {
  const _$_PlayerFailureState({required this.title, required this.message});

  @override
  final String title;
  @override
  final String message;

  @override
  String toString() {
    return 'PlayerState.failure(title: $title, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerFailureState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerFailureStateCopyWith<_$_PlayerFailureState> get copyWith =>
      __$$_PlayerFailureStateCopyWithImpl<_$_PlayerFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(BeatPlayingStatus status,
            PublicUserEntity? author, BeatEntity entity, File beatFile)
        player,
    required TResult Function(String title, String message) failure,
  }) {
    return failure(title, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult? Function(String title, String message)? failure,
  }) {
    return failure?.call(title, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(BeatPlayingStatus status, PublicUserEntity? author,
            BeatEntity entity, File beatFile)?
        player,
    TResult Function(String title, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(title, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PlayerInitialState value) initial,
    required TResult Function(_PlayerShrinkedLoadingState value) loading,
    required TResult Function(_PlayerState value) player,
    required TResult Function(_PlayerFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PlayerInitialState value)? initial,
    TResult? Function(_PlayerShrinkedLoadingState value)? loading,
    TResult? Function(_PlayerState value)? player,
    TResult? Function(_PlayerFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PlayerInitialState value)? initial,
    TResult Function(_PlayerShrinkedLoadingState value)? loading,
    TResult Function(_PlayerState value)? player,
    TResult Function(_PlayerFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PlayerFailureState implements PlayerState {
  const factory _PlayerFailureState(
      {required final String title,
      required final String message}) = _$_PlayerFailureState;

  String get title;
  String get message;
  @JsonKey(ignore: true)
  _$$_PlayerFailureStateCopyWith<_$_PlayerFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
