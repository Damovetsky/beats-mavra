// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrivateUserModel _$PrivateUserModelFromJson(Map<String, dynamic> json) {
  return _PrivateUserModel.fromJson(json);
}

/// @nodoc
mixin _$PrivateUserModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  Map<String, bool> get favorite => throw _privateConstructorUsedError;
  Map<String, bool> get bought => throw _privateConstructorUsedError;
  Map<String, bool> get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrivateUserModelCopyWith<PrivateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateUserModelCopyWith<$Res> {
  factory $PrivateUserModelCopyWith(
          PrivateUserModel value, $Res Function(PrivateUserModel) then) =
      _$PrivateUserModelCopyWithImpl<$Res, PrivateUserModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      double balance,
      Map<String, bool> favorite,
      Map<String, bool> bought,
      Map<String, bool> created});
}

/// @nodoc
class _$PrivateUserModelCopyWithImpl<$Res, $Val extends PrivateUserModel>
    implements $PrivateUserModelCopyWith<$Res> {
  _$PrivateUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? balance = null,
    Object? favorite = null,
    Object? bought = null,
    Object? created = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      bought: null == bought
          ? _value.bought
          : bought // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      created: null == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrivateUserModelCopyWith<$Res>
    implements $PrivateUserModelCopyWith<$Res> {
  factory _$$_PrivateUserModelCopyWith(
          _$_PrivateUserModel value, $Res Function(_$_PrivateUserModel) then) =
      __$$_PrivateUserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      double balance,
      Map<String, bool> favorite,
      Map<String, bool> bought,
      Map<String, bool> created});
}

/// @nodoc
class __$$_PrivateUserModelCopyWithImpl<$Res>
    extends _$PrivateUserModelCopyWithImpl<$Res, _$_PrivateUserModel>
    implements _$$_PrivateUserModelCopyWith<$Res> {
  __$$_PrivateUserModelCopyWithImpl(
      _$_PrivateUserModel _value, $Res Function(_$_PrivateUserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? balance = null,
    Object? favorite = null,
    Object? bought = null,
    Object? created = null,
  }) {
    return _then(_$_PrivateUserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      favorite: null == favorite
          ? _value._favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      bought: null == bought
          ? _value._bought
          : bought // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      created: null == created
          ? _value._created
          : created // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrivateUserModel implements _PrivateUserModel {
  const _$_PrivateUserModel(
      {required this.id,
      required this.email,
      required this.balance,
      required final Map<String, bool> favorite,
      required final Map<String, bool> bought,
      required final Map<String, bool> created})
      : _favorite = favorite,
        _bought = bought,
        _created = created;

  factory _$_PrivateUserModel.fromJson(Map<String, dynamic> json) =>
      _$$_PrivateUserModelFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final double balance;
  final Map<String, bool> _favorite;
  @override
  Map<String, bool> get favorite {
    if (_favorite is EqualUnmodifiableMapView) return _favorite;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_favorite);
  }

  final Map<String, bool> _bought;
  @override
  Map<String, bool> get bought {
    if (_bought is EqualUnmodifiableMapView) return _bought;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_bought);
  }

  final Map<String, bool> _created;
  @override
  Map<String, bool> get created {
    if (_created is EqualUnmodifiableMapView) return _created;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_created);
  }

  @override
  String toString() {
    return 'PrivateUserModel(id: $id, email: $email, balance: $balance, favorite: $favorite, bought: $bought, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality().equals(other._favorite, _favorite) &&
            const DeepCollectionEquality().equals(other._bought, _bought) &&
            const DeepCollectionEquality().equals(other._created, _created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      balance,
      const DeepCollectionEquality().hash(_favorite),
      const DeepCollectionEquality().hash(_bought),
      const DeepCollectionEquality().hash(_created));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateUserModelCopyWith<_$_PrivateUserModel> get copyWith =>
      __$$_PrivateUserModelCopyWithImpl<_$_PrivateUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrivateUserModelToJson(
      this,
    );
  }
}

abstract class _PrivateUserModel implements PrivateUserModel {
  const factory _PrivateUserModel(
      {required final String id,
      required final String email,
      required final double balance,
      required final Map<String, bool> favorite,
      required final Map<String, bool> bought,
      required final Map<String, bool> created}) = _$_PrivateUserModel;

  factory _PrivateUserModel.fromJson(Map<String, dynamic> json) =
      _$_PrivateUserModel.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  double get balance;
  @override
  Map<String, bool> get favorite;
  @override
  Map<String, bool> get bought;
  @override
  Map<String, bool> get created;
  @override
  @JsonKey(ignore: true)
  _$$_PrivateUserModelCopyWith<_$_PrivateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
