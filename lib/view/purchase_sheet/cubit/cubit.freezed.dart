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
mixin _$PurchaseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<OfferEntity> offers, String? currentGrade)
        unactive,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchaseUnactiveState value) unactive,
    required TResult Function(_PurchaseFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchaseUnactiveState value)? unactive,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchaseUnactiveState value)? unactive,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseStateCopyWith<$Res> {
  factory $PurchaseStateCopyWith(
          PurchaseState value, $Res Function(PurchaseState) then) =
      _$PurchaseStateCopyWithImpl<$Res, PurchaseState>;
}

/// @nodoc
class _$PurchaseStateCopyWithImpl<$Res, $Val extends PurchaseState>
    implements $PurchaseStateCopyWith<$Res> {
  _$PurchaseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PurchaseLoadingStateCopyWith<$Res> {
  factory _$$_PurchaseLoadingStateCopyWith(_$_PurchaseLoadingState value,
          $Res Function(_$_PurchaseLoadingState) then) =
      __$$_PurchaseLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PurchaseLoadingStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PurchaseLoadingState>
    implements _$$_PurchaseLoadingStateCopyWith<$Res> {
  __$$_PurchaseLoadingStateCopyWithImpl(_$_PurchaseLoadingState _value,
      $Res Function(_$_PurchaseLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PurchaseLoadingState implements _PurchaseLoadingState {
  const _$_PurchaseLoadingState();

  @override
  String toString() {
    return 'PurchaseState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PurchaseLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<OfferEntity> offers, String? currentGrade)
        unactive,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult Function(String message)? failure,
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
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchaseUnactiveState value) unactive,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchaseUnactiveState value)? unactive,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchaseUnactiveState value)? unactive,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PurchaseLoadingState implements PurchaseState {
  const factory _PurchaseLoadingState() = _$_PurchaseLoadingState;
}

/// @nodoc
abstract class _$$_PurchaseUnactiveStateCopyWith<$Res> {
  factory _$$_PurchaseUnactiveStateCopyWith(_$_PurchaseUnactiveState value,
          $Res Function(_$_PurchaseUnactiveState) then) =
      __$$_PurchaseUnactiveStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OfferEntity> offers, String? currentGrade});
}

/// @nodoc
class __$$_PurchaseUnactiveStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PurchaseUnactiveState>
    implements _$$_PurchaseUnactiveStateCopyWith<$Res> {
  __$$_PurchaseUnactiveStateCopyWithImpl(_$_PurchaseUnactiveState _value,
      $Res Function(_$_PurchaseUnactiveState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? currentGrade = freezed,
  }) {
    return _then(_$_PurchaseUnactiveState(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>,
      currentGrade: freezed == currentGrade
          ? _value.currentGrade
          : currentGrade // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PurchaseUnactiveState implements _PurchaseUnactiveState {
  const _$_PurchaseUnactiveState(
      {required final List<OfferEntity> offers, this.currentGrade})
      : _offers = offers;

  final List<OfferEntity> _offers;
  @override
  List<OfferEntity> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final String? currentGrade;

  @override
  String toString() {
    return 'PurchaseState.unactive(offers: $offers, currentGrade: $currentGrade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseUnactiveState &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.currentGrade, currentGrade) ||
                other.currentGrade == currentGrade));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_offers), currentGrade);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseUnactiveStateCopyWith<_$_PurchaseUnactiveState> get copyWith =>
      __$$_PurchaseUnactiveStateCopyWithImpl<_$_PurchaseUnactiveState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<OfferEntity> offers, String? currentGrade)
        unactive,
    required TResult Function(String message) failure,
  }) {
    return unactive(offers, currentGrade);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult? Function(String message)? failure,
  }) {
    return unactive?.call(offers, currentGrade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (unactive != null) {
      return unactive(offers, currentGrade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchaseUnactiveState value) unactive,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return unactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchaseUnactiveState value)? unactive,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return unactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchaseUnactiveState value)? unactive,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (unactive != null) {
      return unactive(this);
    }
    return orElse();
  }
}

abstract class _PurchaseUnactiveState implements PurchaseState {
  const factory _PurchaseUnactiveState(
      {required final List<OfferEntity> offers,
      final String? currentGrade}) = _$_PurchaseUnactiveState;

  List<OfferEntity> get offers;
  String? get currentGrade;
  @JsonKey(ignore: true)
  _$$_PurchaseUnactiveStateCopyWith<_$_PurchaseUnactiveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PurchaseFailureStateCopyWith<$Res> {
  factory _$$_PurchaseFailureStateCopyWith(_$_PurchaseFailureState value,
          $Res Function(_$_PurchaseFailureState) then) =
      __$$_PurchaseFailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_PurchaseFailureStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PurchaseFailureState>
    implements _$$_PurchaseFailureStateCopyWith<$Res> {
  __$$_PurchaseFailureStateCopyWithImpl(_$_PurchaseFailureState _value,
      $Res Function(_$_PurchaseFailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_PurchaseFailureState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PurchaseFailureState implements _PurchaseFailureState {
  const _$_PurchaseFailureState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'PurchaseState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchaseFailureState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchaseFailureStateCopyWith<_$_PurchaseFailureState> get copyWith =>
      __$$_PurchaseFailureStateCopyWithImpl<_$_PurchaseFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<OfferEntity> offers, String? currentGrade)
        unactive,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, String? currentGrade)? unactive,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, String? currentGrade)? unactive,
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
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchaseUnactiveState value) unactive,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchaseUnactiveState value)? unactive,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchaseUnactiveState value)? unactive,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PurchaseFailureState implements PurchaseState {
  const factory _PurchaseFailureState({required final String message}) =
      _$_PurchaseFailureState;

  String get message;
  @JsonKey(ignore: true)
  _$$_PurchaseFailureStateCopyWith<_$_PurchaseFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
