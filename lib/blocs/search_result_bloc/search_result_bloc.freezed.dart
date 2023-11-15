// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) dateSelected,
    required TResult Function(String enteredNumber) numberEntered,
    required TResult Function() checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? dateSelected,
    TResult? Function(String enteredNumber)? numberEntered,
    TResult? Function()? checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? dateSelected,
    TResult Function(String enteredNumber)? numberEntered,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_NumberEntered value) numberEntered,
    required TResult Function(_CheckPressed value) checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_NumberEntered value)? numberEntered,
    TResult? Function(_CheckPressed value)? checkPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_NumberEntered value)? numberEntered,
    TResult Function(_CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res> {
  factory $SearchResultEventCopyWith(
          SearchResultEvent value, $Res Function(SearchResultEvent) then) =
      _$SearchResultEventCopyWithImpl<$Res, SearchResultEvent>;
}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res, $Val extends SearchResultEvent>
    implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DateSelectedImplCopyWith<$Res> {
  factory _$$DateSelectedImplCopyWith(
          _$DateSelectedImpl value, $Res Function(_$DateSelectedImpl) then) =
      __$$DateSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String selectedDate});
}

/// @nodoc
class __$$DateSelectedImplCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res, _$DateSelectedImpl>
    implements _$$DateSelectedImplCopyWith<$Res> {
  __$$DateSelectedImplCopyWithImpl(
      _$DateSelectedImpl _value, $Res Function(_$DateSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedDate = null,
  }) {
    return _then(_$DateSelectedImpl(
      null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateSelectedImpl implements _DateSelected {
  const _$DateSelectedImpl(this.selectedDate);

  @override
  final String selectedDate;

  @override
  String toString() {
    return 'SearchResultEvent.dateSelected(selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateSelectedImpl &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      __$$DateSelectedImplCopyWithImpl<_$DateSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) dateSelected,
    required TResult Function(String enteredNumber) numberEntered,
    required TResult Function() checkPressed,
  }) {
    return dateSelected(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? dateSelected,
    TResult? Function(String enteredNumber)? numberEntered,
    TResult? Function()? checkPressed,
  }) {
    return dateSelected?.call(selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? dateSelected,
    TResult Function(String enteredNumber)? numberEntered,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_NumberEntered value) numberEntered,
    required TResult Function(_CheckPressed value) checkPressed,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_NumberEntered value)? numberEntered,
    TResult? Function(_CheckPressed value)? checkPressed,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_NumberEntered value)? numberEntered,
    TResult Function(_CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements SearchResultEvent {
  const factory _DateSelected(final String selectedDate) = _$DateSelectedImpl;

  String get selectedDate;
  @JsonKey(ignore: true)
  _$$DateSelectedImplCopyWith<_$DateSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NumberEnteredImplCopyWith<$Res> {
  factory _$$NumberEnteredImplCopyWith(
          _$NumberEnteredImpl value, $Res Function(_$NumberEnteredImpl) then) =
      __$$NumberEnteredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String enteredNumber});
}

/// @nodoc
class __$$NumberEnteredImplCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res, _$NumberEnteredImpl>
    implements _$$NumberEnteredImplCopyWith<$Res> {
  __$$NumberEnteredImplCopyWithImpl(
      _$NumberEnteredImpl _value, $Res Function(_$NumberEnteredImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enteredNumber = null,
  }) {
    return _then(_$NumberEnteredImpl(
      null == enteredNumber
          ? _value.enteredNumber
          : enteredNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NumberEnteredImpl implements _NumberEntered {
  const _$NumberEnteredImpl(this.enteredNumber);

  @override
  final String enteredNumber;

  @override
  String toString() {
    return 'SearchResultEvent.numberEntered(enteredNumber: $enteredNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NumberEnteredImpl &&
            (identical(other.enteredNumber, enteredNumber) ||
                other.enteredNumber == enteredNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enteredNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NumberEnteredImplCopyWith<_$NumberEnteredImpl> get copyWith =>
      __$$NumberEnteredImplCopyWithImpl<_$NumberEnteredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) dateSelected,
    required TResult Function(String enteredNumber) numberEntered,
    required TResult Function() checkPressed,
  }) {
    return numberEntered(enteredNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? dateSelected,
    TResult? Function(String enteredNumber)? numberEntered,
    TResult? Function()? checkPressed,
  }) {
    return numberEntered?.call(enteredNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? dateSelected,
    TResult Function(String enteredNumber)? numberEntered,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) {
    if (numberEntered != null) {
      return numberEntered(enteredNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_NumberEntered value) numberEntered,
    required TResult Function(_CheckPressed value) checkPressed,
  }) {
    return numberEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_NumberEntered value)? numberEntered,
    TResult? Function(_CheckPressed value)? checkPressed,
  }) {
    return numberEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_NumberEntered value)? numberEntered,
    TResult Function(_CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) {
    if (numberEntered != null) {
      return numberEntered(this);
    }
    return orElse();
  }
}

abstract class _NumberEntered implements SearchResultEvent {
  const factory _NumberEntered(final String enteredNumber) =
      _$NumberEnteredImpl;

  String get enteredNumber;
  @JsonKey(ignore: true)
  _$$NumberEnteredImplCopyWith<_$NumberEnteredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckPressedImplCopyWith<$Res> {
  factory _$$CheckPressedImplCopyWith(
          _$CheckPressedImpl value, $Res Function(_$CheckPressedImpl) then) =
      __$$CheckPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckPressedImplCopyWithImpl<$Res>
    extends _$SearchResultEventCopyWithImpl<$Res, _$CheckPressedImpl>
    implements _$$CheckPressedImplCopyWith<$Res> {
  __$$CheckPressedImplCopyWithImpl(
      _$CheckPressedImpl _value, $Res Function(_$CheckPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckPressedImpl implements _CheckPressed {
  const _$CheckPressedImpl();

  @override
  String toString() {
    return 'SearchResultEvent.checkPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String selectedDate) dateSelected,
    required TResult Function(String enteredNumber) numberEntered,
    required TResult Function() checkPressed,
  }) {
    return checkPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String selectedDate)? dateSelected,
    TResult? Function(String enteredNumber)? numberEntered,
    TResult? Function()? checkPressed,
  }) {
    return checkPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String selectedDate)? dateSelected,
    TResult Function(String enteredNumber)? numberEntered,
    TResult Function()? checkPressed,
    required TResult orElse(),
  }) {
    if (checkPressed != null) {
      return checkPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_NumberEntered value) numberEntered,
    required TResult Function(_CheckPressed value) checkPressed,
  }) {
    return checkPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_NumberEntered value)? numberEntered,
    TResult? Function(_CheckPressed value)? checkPressed,
  }) {
    return checkPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_NumberEntered value)? numberEntered,
    TResult Function(_CheckPressed value)? checkPressed,
    required TResult orElse(),
  }) {
    if (checkPressed != null) {
      return checkPressed(this);
    }
    return orElse();
  }
}

abstract class _CheckPressed implements SearchResultEvent {
  const factory _CheckPressed() = _$CheckPressedImpl;
}

/// @nodoc
mixin _$SearchResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res, SearchResultState>;
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res, $Val extends SearchResultState>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnteredNumberIsNotValidImplCopyWith<$Res> {
  factory _$$EnteredNumberIsNotValidImplCopyWith(
          _$EnteredNumberIsNotValidImpl value,
          $Res Function(_$EnteredNumberIsNotValidImpl) then) =
      __$$EnteredNumberIsNotValidImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnteredNumberIsNotValidImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$EnteredNumberIsNotValidImpl>
    implements _$$EnteredNumberIsNotValidImplCopyWith<$Res> {
  __$$EnteredNumberIsNotValidImplCopyWithImpl(
      _$EnteredNumberIsNotValidImpl _value,
      $Res Function(_$EnteredNumberIsNotValidImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnteredNumberIsNotValidImpl implements EnteredNumberIsNotValid {
  const _$EnteredNumberIsNotValidImpl();

  @override
  String toString() {
    return 'SearchResultState.enteredNumberIsNotValid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnteredNumberIsNotValidImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return enteredNumberIsNotValid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return enteredNumberIsNotValid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (enteredNumberIsNotValid != null) {
      return enteredNumberIsNotValid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return enteredNumberIsNotValid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return enteredNumberIsNotValid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (enteredNumberIsNotValid != null) {
      return enteredNumberIsNotValid(this);
    }
    return orElse();
  }
}

abstract class EnteredNumberIsNotValid implements SearchResultState {
  const factory EnteredNumberIsNotValid() = _$EnteredNumberIsNotValidImpl;
}

/// @nodoc
abstract class _$$DateIsSelectedImplCopyWith<$Res> {
  factory _$$DateIsSelectedImplCopyWith(_$DateIsSelectedImpl value,
          $Res Function(_$DateIsSelectedImpl) then) =
      __$$DateIsSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$DateIsSelectedImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$DateIsSelectedImpl>
    implements _$$DateIsSelectedImplCopyWith<$Res> {
  __$$DateIsSelectedImplCopyWithImpl(
      _$DateIsSelectedImpl _value, $Res Function(_$DateIsSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateIsSelectedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DateIsSelectedImpl implements DateIsSelected {
  const _$DateIsSelectedImpl(this.date);

  @override
  final String date;

  @override
  String toString() {
    return 'SearchResultState.dateIsSelected(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateIsSelectedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateIsSelectedImplCopyWith<_$DateIsSelectedImpl> get copyWith =>
      __$$DateIsSelectedImplCopyWithImpl<_$DateIsSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return dateIsSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return dateIsSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (dateIsSelected != null) {
      return dateIsSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return dateIsSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return dateIsSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (dateIsSelected != null) {
      return dateIsSelected(this);
    }
    return orElse();
  }
}

abstract class DateIsSelected implements SearchResultState {
  const factory DateIsSelected(final String date) = _$DateIsSelectedImpl;

  String get date;
  @JsonKey(ignore: true)
  _$$DateIsSelectedImplCopyWith<_$DateIsSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ButtonPressedImplCopyWith<$Res> {
  factory _$$ButtonPressedImplCopyWith(
          _$ButtonPressedImpl value, $Res Function(_$ButtonPressedImpl) then) =
      __$$ButtonPressedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<String>? result,
      String selectedLotteryLink,
      String date,
      String lotteryName});
}

/// @nodoc
class __$$ButtonPressedImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$ButtonPressedImpl>
    implements _$$ButtonPressedImplCopyWith<$Res> {
  __$$ButtonPressedImplCopyWithImpl(
      _$ButtonPressedImpl _value, $Res Function(_$ButtonPressedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? selectedLotteryLink = null,
    Object? date = null,
    Object? lotteryName = null,
  }) {
    return _then(_$ButtonPressedImpl(
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      selectedLotteryLink: null == selectedLotteryLink
          ? _value.selectedLotteryLink
          : selectedLotteryLink // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ButtonPressedImpl implements ButtonPressed {
  const _$ButtonPressedImpl(
      {final List<String>? result,
      required this.selectedLotteryLink,
      required this.date,
      required this.lotteryName})
      : _result = result;

  final List<String>? _result;
  @override
  List<String>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String selectedLotteryLink;
  @override
  final String date;
  @override
  final String lotteryName;

  @override
  String toString() {
    return 'SearchResultState.buttonPressed(result: $result, selectedLotteryLink: $selectedLotteryLink, date: $date, lotteryName: $lotteryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ButtonPressedImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.selectedLotteryLink, selectedLotteryLink) ||
                other.selectedLotteryLink == selectedLotteryLink) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.lotteryName, lotteryName) ||
                other.lotteryName == lotteryName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_result),
      selectedLotteryLink,
      date,
      lotteryName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ButtonPressedImplCopyWith<_$ButtonPressedImpl> get copyWith =>
      __$$ButtonPressedImplCopyWithImpl<_$ButtonPressedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return buttonPressed(result, selectedLotteryLink, date, lotteryName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return buttonPressed?.call(result, selectedLotteryLink, date, lotteryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(result, selectedLotteryLink, date, lotteryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return buttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return buttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (buttonPressed != null) {
      return buttonPressed(this);
    }
    return orElse();
  }
}

abstract class ButtonPressed implements SearchResultState {
  const factory ButtonPressed(
      {final List<String>? result,
      required final String selectedLotteryLink,
      required final String date,
      required final String lotteryName}) = _$ButtonPressedImpl;

  List<String>? get result;
  String get selectedLotteryLink;
  String get date;
  String get lotteryName;
  @JsonKey(ignore: true)
  _$$ButtonPressedImplCopyWith<_$ButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SearchResultState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SearchResultState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SearchResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enteredNumberIsNotValid,
    required TResult Function(String date) dateIsSelected,
    required TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)
        buttonPressed,
    required TResult Function() initial,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enteredNumberIsNotValid,
    TResult? Function(String date)? dateIsSelected,
    TResult? Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult? Function()? initial,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enteredNumberIsNotValid,
    TResult Function(String date)? dateIsSelected,
    TResult Function(List<String>? result, String selectedLotteryLink,
            String date, String lotteryName)?
        buttonPressed,
    TResult Function()? initial,
    TResult Function()? loading,
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
    required TResult Function(EnteredNumberIsNotValid value)
        enteredNumberIsNotValid,
    required TResult Function(DateIsSelected value) dateIsSelected,
    required TResult Function(ButtonPressed value) buttonPressed,
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult? Function(DateIsSelected value)? dateIsSelected,
    TResult? Function(ButtonPressed value)? buttonPressed,
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EnteredNumberIsNotValid value)? enteredNumberIsNotValid,
    TResult Function(DateIsSelected value)? dateIsSelected,
    TResult Function(ButtonPressed value)? buttonPressed,
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SearchResultState {
  const factory Loading() = _$LoadingImpl;
}
