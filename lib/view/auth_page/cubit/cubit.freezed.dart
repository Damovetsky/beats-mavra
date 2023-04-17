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
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasText) signIn,
    required TResult Function(bool hasText) signUp,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasText)? signIn,
    TResult? Function(bool hasText)? signUp,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasText)? signIn,
    TResult Function(bool hasText)? signUp,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignInState value) signIn,
    required TResult Function(_AuthSignUpState value) signUp,
    required TResult Function(_AuthFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthSignInState value)? signIn,
    TResult? Function(_AuthSignUpState value)? signUp,
    TResult? Function(_AuthFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignInState value)? signIn,
    TResult Function(_AuthSignUpState value)? signUp,
    TResult Function(_AuthFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthSignInStateCopyWith<$Res> {
  factory _$$_AuthSignInStateCopyWith(
          _$_AuthSignInState value, $Res Function(_$_AuthSignInState) then) =
      __$$_AuthSignInStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasText});
}

/// @nodoc
class __$$_AuthSignInStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthSignInState>
    implements _$$_AuthSignInStateCopyWith<$Res> {
  __$$_AuthSignInStateCopyWithImpl(
      _$_AuthSignInState _value, $Res Function(_$_AuthSignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasText = null,
  }) {
    return _then(_$_AuthSignInState(
      hasText: null == hasText
          ? _value.hasText
          : hasText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthSignInState implements _AuthSignInState {
  const _$_AuthSignInState({required this.hasText});

  @override
  final bool hasText;

  @override
  String toString() {
    return 'AuthState.signIn(hasText: $hasText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignInState &&
            (identical(other.hasText, hasText) || other.hasText == hasText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignInStateCopyWith<_$_AuthSignInState> get copyWith =>
      __$$_AuthSignInStateCopyWithImpl<_$_AuthSignInState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasText) signIn,
    required TResult Function(bool hasText) signUp,
    required TResult Function(String message) failure,
  }) {
    return signIn(hasText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasText)? signIn,
    TResult? Function(bool hasText)? signUp,
    TResult? Function(String message)? failure,
  }) {
    return signIn?.call(hasText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasText)? signIn,
    TResult Function(bool hasText)? signUp,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(hasText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignInState value) signIn,
    required TResult Function(_AuthSignUpState value) signUp,
    required TResult Function(_AuthFailureState value) failure,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthSignInState value)? signIn,
    TResult? Function(_AuthSignUpState value)? signUp,
    TResult? Function(_AuthFailureState value)? failure,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignInState value)? signIn,
    TResult Function(_AuthSignUpState value)? signUp,
    TResult Function(_AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class _AuthSignInState implements AuthState {
  const factory _AuthSignInState({required final bool hasText}) =
      _$_AuthSignInState;

  bool get hasText;
  @JsonKey(ignore: true)
  _$$_AuthSignInStateCopyWith<_$_AuthSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthSignUpStateCopyWith<$Res> {
  factory _$$_AuthSignUpStateCopyWith(
          _$_AuthSignUpState value, $Res Function(_$_AuthSignUpState) then) =
      __$$_AuthSignUpStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasText});
}

/// @nodoc
class __$$_AuthSignUpStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthSignUpState>
    implements _$$_AuthSignUpStateCopyWith<$Res> {
  __$$_AuthSignUpStateCopyWithImpl(
      _$_AuthSignUpState _value, $Res Function(_$_AuthSignUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasText = null,
  }) {
    return _then(_$_AuthSignUpState(
      hasText: null == hasText
          ? _value.hasText
          : hasText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AuthSignUpState implements _AuthSignUpState {
  const _$_AuthSignUpState({required this.hasText});

  @override
  final bool hasText;

  @override
  String toString() {
    return 'AuthState.signUp(hasText: $hasText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignUpState &&
            (identical(other.hasText, hasText) || other.hasText == hasText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignUpStateCopyWith<_$_AuthSignUpState> get copyWith =>
      __$$_AuthSignUpStateCopyWithImpl<_$_AuthSignUpState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasText) signIn,
    required TResult Function(bool hasText) signUp,
    required TResult Function(String message) failure,
  }) {
    return signUp(hasText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasText)? signIn,
    TResult? Function(bool hasText)? signUp,
    TResult? Function(String message)? failure,
  }) {
    return signUp?.call(hasText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasText)? signIn,
    TResult Function(bool hasText)? signUp,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(hasText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignInState value) signIn,
    required TResult Function(_AuthSignUpState value) signUp,
    required TResult Function(_AuthFailureState value) failure,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthSignInState value)? signIn,
    TResult? Function(_AuthSignUpState value)? signUp,
    TResult? Function(_AuthFailureState value)? failure,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignInState value)? signIn,
    TResult Function(_AuthSignUpState value)? signUp,
    TResult Function(_AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _AuthSignUpState implements AuthState {
  const factory _AuthSignUpState({required final bool hasText}) =
      _$_AuthSignUpState;

  bool get hasText;
  @JsonKey(ignore: true)
  _$$_AuthSignUpStateCopyWith<_$_AuthSignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthFailureStateCopyWith<$Res> {
  factory _$$_AuthFailureStateCopyWith(
          _$_AuthFailureState value, $Res Function(_$_AuthFailureState) then) =
      __$$_AuthFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_AuthFailureStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthFailureState>
    implements _$$_AuthFailureStateCopyWith<$Res> {
  __$$_AuthFailureStateCopyWithImpl(
      _$_AuthFailureState _value, $Res Function(_$_AuthFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_AuthFailureState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthFailureState implements _AuthFailureState {
  const _$_AuthFailureState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFailureState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFailureStateCopyWith<_$_AuthFailureState> get copyWith =>
      __$$_AuthFailureStateCopyWithImpl<_$_AuthFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool hasText) signIn,
    required TResult Function(bool hasText) signUp,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool hasText)? signIn,
    TResult? Function(bool hasText)? signUp,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool hasText)? signIn,
    TResult Function(bool hasText)? signUp,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthSignInState value) signIn,
    required TResult Function(_AuthSignUpState value) signUp,
    required TResult Function(_AuthFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthSignInState value)? signIn,
    TResult? Function(_AuthSignUpState value)? signUp,
    TResult? Function(_AuthFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthSignInState value)? signIn,
    TResult Function(_AuthSignUpState value)? signUp,
    TResult Function(_AuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailureState implements AuthState {
  const factory _AuthFailureState({required final String message}) =
      _$_AuthFailureState;

  String get message;
  @JsonKey(ignore: true)
  _$$_AuthFailureStateCopyWith<_$_AuthFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
