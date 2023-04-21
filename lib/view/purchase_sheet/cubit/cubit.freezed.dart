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
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
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
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
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
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
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
abstract class _$$_PurchasesOffersStateCopyWith<$Res> {
  factory _$$_PurchasesOffersStateCopyWith(_$_PurchasesOffersState value,
          $Res Function(_$_PurchasesOffersState) then) =
      __$$_PurchasesOffersStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OfferEntity> offers, OfferEntity currentOffer});

  $OfferEntityCopyWith<$Res> get currentOffer;
}

/// @nodoc
class __$$_PurchasesOffersStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PurchasesOffersState>
    implements _$$_PurchasesOffersStateCopyWith<$Res> {
  __$$_PurchasesOffersStateCopyWithImpl(_$_PurchasesOffersState _value,
      $Res Function(_$_PurchasesOffersState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? currentOffer = null,
  }) {
    return _then(_$_PurchasesOffersState(
      offers: null == offers
          ? _value._offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<OfferEntity>,
      currentOffer: null == currentOffer
          ? _value.currentOffer
          : currentOffer // ignore: cast_nullable_to_non_nullable
              as OfferEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $OfferEntityCopyWith<$Res> get currentOffer {
    return $OfferEntityCopyWith<$Res>(_value.currentOffer, (value) {
      return _then(_value.copyWith(currentOffer: value));
    });
  }
}

/// @nodoc

class _$_PurchasesOffersState implements _PurchasesOffersState {
  const _$_PurchasesOffersState(
      {required final List<OfferEntity> offers, required this.currentOffer})
      : _offers = offers;

  final List<OfferEntity> _offers;
  @override
  List<OfferEntity> get offers {
    if (_offers is EqualUnmodifiableListView) return _offers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_offers);
  }

  @override
  final OfferEntity currentOffer;

  @override
  String toString() {
    return 'PurchaseState.offers(offers: $offers, currentOffer: $currentOffer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PurchasesOffersState &&
            const DeepCollectionEquality().equals(other._offers, _offers) &&
            (identical(other.currentOffer, currentOffer) ||
                other.currentOffer == currentOffer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_offers), currentOffer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PurchasesOffersStateCopyWith<_$_PurchasesOffersState> get copyWith =>
      __$$_PurchasesOffersStateCopyWithImpl<_$_PurchasesOffersState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return offers(this.offers, currentOffer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return offers?.call(this.offers, currentOffer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (offers != null) {
      return offers(this.offers, currentOffer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return offers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return offers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (offers != null) {
      return offers(this);
    }
    return orElse();
  }
}

abstract class _PurchasesOffersState implements PurchaseState {
  const factory _PurchasesOffersState(
      {required final List<OfferEntity> offers,
      required final OfferEntity currentOffer}) = _$_PurchasesOffersState;

  List<OfferEntity> get offers;
  OfferEntity get currentOffer;
  @JsonKey(ignore: true)
  _$$_PurchasesOffersStateCopyWith<_$_PurchasesOffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PuchasesBuyLoadingStateCopyWith<$Res> {
  factory _$$_PuchasesBuyLoadingStateCopyWith(_$_PuchasesBuyLoadingState value,
          $Res Function(_$_PuchasesBuyLoadingState) then) =
      __$$_PuchasesBuyLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PuchasesBuyLoadingStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PuchasesBuyLoadingState>
    implements _$$_PuchasesBuyLoadingStateCopyWith<$Res> {
  __$$_PuchasesBuyLoadingStateCopyWithImpl(_$_PuchasesBuyLoadingState _value,
      $Res Function(_$_PuchasesBuyLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PuchasesBuyLoadingState implements _PuchasesBuyLoadingState {
  const _$_PuchasesBuyLoadingState();

  @override
  String toString() {
    return 'PurchaseState.buyLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PuchasesBuyLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return buyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return buyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (buyLoading != null) {
      return buyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return buyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return buyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (buyLoading != null) {
      return buyLoading(this);
    }
    return orElse();
  }
}

abstract class _PuchasesBuyLoadingState implements PurchaseState {
  const factory _PuchasesBuyLoadingState() = _$_PuchasesBuyLoadingState;
}

/// @nodoc
abstract class _$$_PurchasesSuccessStateCopyWith<$Res> {
  factory _$$_PurchasesSuccessStateCopyWith(_$_PurchasesSuccessState value,
          $Res Function(_$_PurchasesSuccessState) then) =
      __$$_PurchasesSuccessStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PurchasesSuccessStateCopyWithImpl<$Res>
    extends _$PurchaseStateCopyWithImpl<$Res, _$_PurchasesSuccessState>
    implements _$$_PurchasesSuccessStateCopyWith<$Res> {
  __$$_PurchasesSuccessStateCopyWithImpl(_$_PurchasesSuccessState _value,
      $Res Function(_$_PurchasesSuccessState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PurchasesSuccessState implements _PurchasesSuccessState {
  const _$_PurchasesSuccessState();

  @override
  String toString() {
    return 'PurchaseState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PurchasesSuccessState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PurchaseLoadingState value) loading,
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
    TResult Function(_PurchaseFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PurchasesSuccessState implements PurchaseState {
  const factory _PurchasesSuccessState() = _$_PurchasesSuccessState;
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
    required TResult Function(
            List<OfferEntity> offers, OfferEntity currentOffer)
        offers,
    required TResult Function() buyLoading,
    required TResult Function() success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult? Function()? buyLoading,
    TResult? Function()? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<OfferEntity> offers, OfferEntity currentOffer)?
        offers,
    TResult Function()? buyLoading,
    TResult Function()? success,
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
    required TResult Function(_PurchasesOffersState value) offers,
    required TResult Function(_PuchasesBuyLoadingState value) buyLoading,
    required TResult Function(_PurchasesSuccessState value) success,
    required TResult Function(_PurchaseFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PurchaseLoadingState value)? loading,
    TResult? Function(_PurchasesOffersState value)? offers,
    TResult? Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult? Function(_PurchasesSuccessState value)? success,
    TResult? Function(_PurchaseFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PurchaseLoadingState value)? loading,
    TResult Function(_PurchasesOffersState value)? offers,
    TResult Function(_PuchasesBuyLoadingState value)? buyLoading,
    TResult Function(_PurchasesSuccessState value)? success,
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
