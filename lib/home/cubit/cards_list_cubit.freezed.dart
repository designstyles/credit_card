// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cards_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CardsListPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CreditCard> cards) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CreditCard> cards)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CreditCard> cards)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsListPageLoading value) loading,
    required TResult Function(CardsListPageEmpty value) empty,
    required TResult Function(CardsListPageSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsListPageLoading value)? loading,
    TResult? Function(CardsListPageEmpty value)? empty,
    TResult? Function(CardsListPageSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsListPageLoading value)? loading,
    TResult Function(CardsListPageEmpty value)? empty,
    TResult Function(CardsListPageSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardsListPageStateCopyWith<$Res> {
  factory $CardsListPageStateCopyWith(
          CardsListPageState value, $Res Function(CardsListPageState) then) =
      _$CardsListPageStateCopyWithImpl<$Res, CardsListPageState>;
}

/// @nodoc
class _$CardsListPageStateCopyWithImpl<$Res, $Val extends CardsListPageState>
    implements $CardsListPageStateCopyWith<$Res> {
  _$CardsListPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CardsListPageLoadingCopyWith<$Res> {
  factory _$$CardsListPageLoadingCopyWith(_$CardsListPageLoading value,
          $Res Function(_$CardsListPageLoading) then) =
      __$$CardsListPageLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardsListPageLoadingCopyWithImpl<$Res>
    extends _$CardsListPageStateCopyWithImpl<$Res, _$CardsListPageLoading>
    implements _$$CardsListPageLoadingCopyWith<$Res> {
  __$$CardsListPageLoadingCopyWithImpl(_$CardsListPageLoading _value,
      $Res Function(_$CardsListPageLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardsListPageLoading implements CardsListPageLoading {
  const _$CardsListPageLoading();

  @override
  String toString() {
    return 'CardsListPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardsListPageLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CreditCard> cards) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CreditCard> cards)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CreditCard> cards)? success,
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
    required TResult Function(CardsListPageLoading value) loading,
    required TResult Function(CardsListPageEmpty value) empty,
    required TResult Function(CardsListPageSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsListPageLoading value)? loading,
    TResult? Function(CardsListPageEmpty value)? empty,
    TResult? Function(CardsListPageSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsListPageLoading value)? loading,
    TResult Function(CardsListPageEmpty value)? empty,
    TResult Function(CardsListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CardsListPageLoading implements CardsListPageState {
  const factory CardsListPageLoading() = _$CardsListPageLoading;
}

/// @nodoc
abstract class _$$CardsListPageEmptyCopyWith<$Res> {
  factory _$$CardsListPageEmptyCopyWith(_$CardsListPageEmpty value,
          $Res Function(_$CardsListPageEmpty) then) =
      __$$CardsListPageEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CardsListPageEmptyCopyWithImpl<$Res>
    extends _$CardsListPageStateCopyWithImpl<$Res, _$CardsListPageEmpty>
    implements _$$CardsListPageEmptyCopyWith<$Res> {
  __$$CardsListPageEmptyCopyWithImpl(
      _$CardsListPageEmpty _value, $Res Function(_$CardsListPageEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CardsListPageEmpty implements CardsListPageEmpty {
  const _$CardsListPageEmpty();

  @override
  String toString() {
    return 'CardsListPageState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CardsListPageEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CreditCard> cards) success,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CreditCard> cards)? success,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CreditCard> cards)? success,
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
    required TResult Function(CardsListPageLoading value) loading,
    required TResult Function(CardsListPageEmpty value) empty,
    required TResult Function(CardsListPageSuccess value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsListPageLoading value)? loading,
    TResult? Function(CardsListPageEmpty value)? empty,
    TResult? Function(CardsListPageSuccess value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsListPageLoading value)? loading,
    TResult Function(CardsListPageEmpty value)? empty,
    TResult Function(CardsListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class CardsListPageEmpty implements CardsListPageState {
  const factory CardsListPageEmpty() = _$CardsListPageEmpty;
}

/// @nodoc
abstract class _$$CardsListPageSuccessCopyWith<$Res> {
  factory _$$CardsListPageSuccessCopyWith(_$CardsListPageSuccess value,
          $Res Function(_$CardsListPageSuccess) then) =
      __$$CardsListPageSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreditCard> cards});
}

/// @nodoc
class __$$CardsListPageSuccessCopyWithImpl<$Res>
    extends _$CardsListPageStateCopyWithImpl<$Res, _$CardsListPageSuccess>
    implements _$$CardsListPageSuccessCopyWith<$Res> {
  __$$CardsListPageSuccessCopyWithImpl(_$CardsListPageSuccess _value,
      $Res Function(_$CardsListPageSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$CardsListPageSuccess(
      null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<CreditCard>,
    ));
  }
}

/// @nodoc

class _$CardsListPageSuccess implements CardsListPageSuccess {
  const _$CardsListPageSuccess(final List<CreditCard> cards) : _cards = cards;

  final List<CreditCard> _cards;
  @override
  List<CreditCard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'CardsListPageState.success(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardsListPageSuccess &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CardsListPageSuccessCopyWith<_$CardsListPageSuccess> get copyWith =>
      __$$CardsListPageSuccessCopyWithImpl<_$CardsListPageSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<CreditCard> cards) success,
  }) {
    return success(cards);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<CreditCard> cards)? success,
  }) {
    return success?.call(cards);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<CreditCard> cards)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CardsListPageLoading value) loading,
    required TResult Function(CardsListPageEmpty value) empty,
    required TResult Function(CardsListPageSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CardsListPageLoading value)? loading,
    TResult? Function(CardsListPageEmpty value)? empty,
    TResult? Function(CardsListPageSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CardsListPageLoading value)? loading,
    TResult Function(CardsListPageEmpty value)? empty,
    TResult Function(CardsListPageSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CardsListPageSuccess implements CardsListPageState {
  const factory CardsListPageSuccess(final List<CreditCard> cards) =
      _$CardsListPageSuccess;

  List<CreditCard> get cards;
  @JsonKey(ignore: true)
  _$$CardsListPageSuccessCopyWith<_$CardsListPageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
