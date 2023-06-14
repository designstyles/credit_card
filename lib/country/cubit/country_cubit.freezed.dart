// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CountryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Country> countries) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Country> countries)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Country> countries)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoading value) loading,
    required TResult Function(CountryListEmpty value) empty,
    required TResult Function(CountryListSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoading value)? loading,
    TResult? Function(CountryListEmpty value)? empty,
    TResult? Function(CountryListSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoading value)? loading,
    TResult Function(CountryListEmpty value)? empty,
    TResult Function(CountryListSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CountryListLoadingCopyWith<$Res> {
  factory _$$CountryListLoadingCopyWith(_$CountryListLoading value,
          $Res Function(_$CountryListLoading) then) =
      __$$CountryListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryListLoadingCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryListLoading>
    implements _$$CountryListLoadingCopyWith<$Res> {
  __$$CountryListLoadingCopyWithImpl(
      _$CountryListLoading _value, $Res Function(_$CountryListLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryListLoading implements CountryListLoading {
  const _$CountryListLoading();

  @override
  String toString() {
    return 'CountryState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Country> countries) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Country> countries)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Country> countries)? success,
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
    required TResult Function(CountryListLoading value) loading,
    required TResult Function(CountryListEmpty value) empty,
    required TResult Function(CountryListSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoading value)? loading,
    TResult? Function(CountryListEmpty value)? empty,
    TResult? Function(CountryListSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoading value)? loading,
    TResult Function(CountryListEmpty value)? empty,
    TResult Function(CountryListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CountryListLoading implements CountryState {
  const factory CountryListLoading() = _$CountryListLoading;
}

/// @nodoc
abstract class _$$CountryListEmptyCopyWith<$Res> {
  factory _$$CountryListEmptyCopyWith(
          _$CountryListEmpty value, $Res Function(_$CountryListEmpty) then) =
      __$$CountryListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CountryListEmptyCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryListEmpty>
    implements _$$CountryListEmptyCopyWith<$Res> {
  __$$CountryListEmptyCopyWithImpl(
      _$CountryListEmpty _value, $Res Function(_$CountryListEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CountryListEmpty implements CountryListEmpty {
  const _$CountryListEmpty();

  @override
  String toString() {
    return 'CountryState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CountryListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Country> countries) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Country> countries)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Country> countries)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoading value) loading,
    required TResult Function(CountryListEmpty value) empty,
    required TResult Function(CountryListSuccess value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoading value)? loading,
    TResult? Function(CountryListEmpty value)? empty,
    TResult? Function(CountryListSuccess value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoading value)? loading,
    TResult Function(CountryListEmpty value)? empty,
    TResult Function(CountryListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CountryListEmpty implements CountryState {
  const factory CountryListEmpty() = _$CountryListEmpty;
}

/// @nodoc
abstract class _$$CountryListSuccessCopyWith<$Res> {
  factory _$$CountryListSuccessCopyWith(_$CountryListSuccess value,
          $Res Function(_$CountryListSuccess) then) =
      __$$CountryListSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Country> countries});
}

/// @nodoc
class __$$CountryListSuccessCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryListSuccess>
    implements _$$CountryListSuccessCopyWith<$Res> {
  __$$CountryListSuccessCopyWithImpl(
      _$CountryListSuccess _value, $Res Function(_$CountryListSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CountryListSuccess(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$CountryListSuccess implements CountryListSuccess {
  const _$CountryListSuccess(final List<Country> countries)
      : _countries = countries;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'CountryState.success(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryListSuccess &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryListSuccessCopyWith<_$CountryListSuccess> get copyWith =>
      __$$CountryListSuccessCopyWithImpl<_$CountryListSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Country> countries) success,
  }) {
    return success(countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Country> countries)? success,
  }) {
    return success?.call(countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Country> countries)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CountryListLoading value) loading,
    required TResult Function(CountryListEmpty value) empty,
    required TResult Function(CountryListSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CountryListLoading value)? loading,
    TResult? Function(CountryListEmpty value)? empty,
    TResult? Function(CountryListSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CountryListLoading value)? loading,
    TResult Function(CountryListEmpty value)? empty,
    TResult Function(CountryListSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CountryListSuccess implements CountryState {
  const factory CountryListSuccess(final List<Country> countries) =
      _$CountryListSuccess;

  List<Country> get countries;
  @JsonKey(ignore: true)
  _$$CountryListSuccessCopyWith<_$CountryListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
