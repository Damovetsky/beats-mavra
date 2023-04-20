// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_beats_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterBeatsModel {
  List<String>? get beatsIds => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  int? get tempStart => throw _privateConstructorUsedError;
  int? get tempEnd => throw _privateConstructorUsedError;
  String? get dimension => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterBeatsModelCopyWith<FilterBeatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterBeatsModelCopyWith<$Res> {
  factory $FilterBeatsModelCopyWith(
          FilterBeatsModel value, $Res Function(FilterBeatsModel) then) =
      _$FilterBeatsModelCopyWithImpl<$Res, FilterBeatsModel>;
  @useResult
  $Res call(
      {List<String>? beatsIds,
      List<String>? genres,
      int? tempStart,
      int? tempEnd,
      String? dimension});
}

/// @nodoc
class _$FilterBeatsModelCopyWithImpl<$Res, $Val extends FilterBeatsModel>
    implements $FilterBeatsModelCopyWith<$Res> {
  _$FilterBeatsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatsIds = freezed,
    Object? genres = freezed,
    Object? tempStart = freezed,
    Object? tempEnd = freezed,
    Object? dimension = freezed,
  }) {
    return _then(_value.copyWith(
      beatsIds: freezed == beatsIds
          ? _value.beatsIds
          : beatsIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tempStart: freezed == tempStart
          ? _value.tempStart
          : tempStart // ignore: cast_nullable_to_non_nullable
              as int?,
      tempEnd: freezed == tempEnd
          ? _value.tempEnd
          : tempEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FilterBeatsModelCopyWith<$Res>
    implements $FilterBeatsModelCopyWith<$Res> {
  factory _$$_FilterBeatsModelCopyWith(
          _$_FilterBeatsModel value, $Res Function(_$_FilterBeatsModel) then) =
      __$$_FilterBeatsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? beatsIds,
      List<String>? genres,
      int? tempStart,
      int? tempEnd,
      String? dimension});
}

/// @nodoc
class __$$_FilterBeatsModelCopyWithImpl<$Res>
    extends _$FilterBeatsModelCopyWithImpl<$Res, _$_FilterBeatsModel>
    implements _$$_FilterBeatsModelCopyWith<$Res> {
  __$$_FilterBeatsModelCopyWithImpl(
      _$_FilterBeatsModel _value, $Res Function(_$_FilterBeatsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beatsIds = freezed,
    Object? genres = freezed,
    Object? tempStart = freezed,
    Object? tempEnd = freezed,
    Object? dimension = freezed,
  }) {
    return _then(_$_FilterBeatsModel(
      beatsIds: freezed == beatsIds
          ? _value._beatsIds
          : beatsIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tempStart: freezed == tempStart
          ? _value.tempStart
          : tempStart // ignore: cast_nullable_to_non_nullable
              as int?,
      tempEnd: freezed == tempEnd
          ? _value.tempEnd
          : tempEnd // ignore: cast_nullable_to_non_nullable
              as int?,
      dimension: freezed == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FilterBeatsModel implements _FilterBeatsModel {
  const _$_FilterBeatsModel(
      {final List<String>? beatsIds,
      final List<String>? genres,
      this.tempStart,
      this.tempEnd,
      this.dimension})
      : _beatsIds = beatsIds,
        _genres = genres;

  final List<String>? _beatsIds;
  @override
  List<String>? get beatsIds {
    final value = _beatsIds;
    if (value == null) return null;
    if (_beatsIds is EqualUnmodifiableListView) return _beatsIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? tempStart;
  @override
  final int? tempEnd;
  @override
  final String? dimension;

  @override
  String toString() {
    return 'FilterBeatsModel(beatsIds: $beatsIds, genres: $genres, tempStart: $tempStart, tempEnd: $tempEnd, dimension: $dimension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterBeatsModel &&
            const DeepCollectionEquality().equals(other._beatsIds, _beatsIds) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.tempStart, tempStart) ||
                other.tempStart == tempStart) &&
            (identical(other.tempEnd, tempEnd) || other.tempEnd == tempEnd) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_beatsIds),
      const DeepCollectionEquality().hash(_genres),
      tempStart,
      tempEnd,
      dimension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FilterBeatsModelCopyWith<_$_FilterBeatsModel> get copyWith =>
      __$$_FilterBeatsModelCopyWithImpl<_$_FilterBeatsModel>(this, _$identity);
}

abstract class _FilterBeatsModel implements FilterBeatsModel {
  const factory _FilterBeatsModel(
      {final List<String>? beatsIds,
      final List<String>? genres,
      final int? tempStart,
      final int? tempEnd,
      final String? dimension}) = _$_FilterBeatsModel;

  @override
  List<String>? get beatsIds;
  @override
  List<String>? get genres;
  @override
  int? get tempStart;
  @override
  int? get tempEnd;
  @override
  String? get dimension;
  @override
  @JsonKey(ignore: true)
  _$$_FilterBeatsModelCopyWith<_$_FilterBeatsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
