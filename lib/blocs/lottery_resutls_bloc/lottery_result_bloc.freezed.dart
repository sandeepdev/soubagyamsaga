// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LotteryResultEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
    required TResult Function(List<LotteryResult> updatedresult) updateResult,
    required TResult Function(LotteryResult selectedLotteyResult)
        showSelecteResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
    TResult? Function(List<LotteryResult> updatedresult)? updateResult,
    TResult? Function(LotteryResult selectedLotteyResult)? showSelecteResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    TResult Function(List<LotteryResult> updatedresult)? updateResult,
    TResult Function(LotteryResult selectedLotteyResult)? showSelecteResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(resultLoaded value) resultLoaded,
    required TResult Function(UpdateResult value) updateResult,
    required TResult Function(ShowSelecteResult value) showSelecteResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(resultLoaded value)? resultLoaded,
    TResult? Function(UpdateResult value)? updateResult,
    TResult? Function(ShowSelecteResult value)? showSelecteResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(resultLoaded value)? resultLoaded,
    TResult Function(UpdateResult value)? updateResult,
    TResult Function(ShowSelecteResult value)? showSelecteResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryResultEventCopyWith<$Res> {
  factory $LotteryResultEventCopyWith(
          LotteryResultEvent value, $Res Function(LotteryResultEvent) then) =
      _$LotteryResultEventCopyWithImpl<$Res, LotteryResultEvent>;
}

/// @nodoc
class _$LotteryResultEventCopyWithImpl<$Res, $Val extends LotteryResultEvent>
    implements $LotteryResultEventCopyWith<$Res> {
  _$LotteryResultEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$resultLoadedImplCopyWith<$Res> {
  factory _$$resultLoadedImplCopyWith(
          _$resultLoadedImpl value, $Res Function(_$resultLoadedImpl) then) =
      __$$resultLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$resultLoadedImplCopyWithImpl<$Res>
    extends _$LotteryResultEventCopyWithImpl<$Res, _$resultLoadedImpl>
    implements _$$resultLoadedImplCopyWith<$Res> {
  __$$resultLoadedImplCopyWithImpl(
      _$resultLoadedImpl _value, $Res Function(_$resultLoadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$resultLoadedImpl with DiagnosticableTreeMixin implements resultLoaded {
  const _$resultLoadedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultEvent.resultLoaded()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'LotteryResultEvent.resultLoaded'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$resultLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
    required TResult Function(List<LotteryResult> updatedresult) updateResult,
    required TResult Function(LotteryResult selectedLotteyResult)
        showSelecteResult,
  }) {
    return resultLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
    TResult? Function(List<LotteryResult> updatedresult)? updateResult,
    TResult? Function(LotteryResult selectedLotteyResult)? showSelecteResult,
  }) {
    return resultLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    TResult Function(List<LotteryResult> updatedresult)? updateResult,
    TResult Function(LotteryResult selectedLotteyResult)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (resultLoaded != null) {
      return resultLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(resultLoaded value) resultLoaded,
    required TResult Function(UpdateResult value) updateResult,
    required TResult Function(ShowSelecteResult value) showSelecteResult,
  }) {
    return resultLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(resultLoaded value)? resultLoaded,
    TResult? Function(UpdateResult value)? updateResult,
    TResult? Function(ShowSelecteResult value)? showSelecteResult,
  }) {
    return resultLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(resultLoaded value)? resultLoaded,
    TResult Function(UpdateResult value)? updateResult,
    TResult Function(ShowSelecteResult value)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (resultLoaded != null) {
      return resultLoaded(this);
    }
    return orElse();
  }
}

abstract class resultLoaded implements LotteryResultEvent {
  const factory resultLoaded() = _$resultLoadedImpl;
}

/// @nodoc
abstract class _$$UpdateResultImplCopyWith<$Res> {
  factory _$$UpdateResultImplCopyWith(
          _$UpdateResultImpl value, $Res Function(_$UpdateResultImpl) then) =
      __$$UpdateResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LotteryResult> updatedresult});
}

/// @nodoc
class __$$UpdateResultImplCopyWithImpl<$Res>
    extends _$LotteryResultEventCopyWithImpl<$Res, _$UpdateResultImpl>
    implements _$$UpdateResultImplCopyWith<$Res> {
  __$$UpdateResultImplCopyWithImpl(
      _$UpdateResultImpl _value, $Res Function(_$UpdateResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedresult = null,
  }) {
    return _then(_$UpdateResultImpl(
      null == updatedresult
          ? _value._updatedresult
          : updatedresult // ignore: cast_nullable_to_non_nullable
              as List<LotteryResult>,
    ));
  }
}

/// @nodoc

class _$UpdateResultImpl with DiagnosticableTreeMixin implements UpdateResult {
  const _$UpdateResultImpl(final List<LotteryResult> updatedresult)
      : _updatedresult = updatedresult;

  final List<LotteryResult> _updatedresult;
  @override
  List<LotteryResult> get updatedresult {
    if (_updatedresult is EqualUnmodifiableListView) return _updatedresult;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_updatedresult);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultEvent.updateResult(updatedresult: $updatedresult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryResultEvent.updateResult'))
      ..add(DiagnosticsProperty('updatedresult', updatedresult));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateResultImpl &&
            const DeepCollectionEquality()
                .equals(other._updatedresult, _updatedresult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_updatedresult));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateResultImplCopyWith<_$UpdateResultImpl> get copyWith =>
      __$$UpdateResultImplCopyWithImpl<_$UpdateResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
    required TResult Function(List<LotteryResult> updatedresult) updateResult,
    required TResult Function(LotteryResult selectedLotteyResult)
        showSelecteResult,
  }) {
    return updateResult(updatedresult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
    TResult? Function(List<LotteryResult> updatedresult)? updateResult,
    TResult? Function(LotteryResult selectedLotteyResult)? showSelecteResult,
  }) {
    return updateResult?.call(updatedresult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    TResult Function(List<LotteryResult> updatedresult)? updateResult,
    TResult Function(LotteryResult selectedLotteyResult)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (updateResult != null) {
      return updateResult(updatedresult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(resultLoaded value) resultLoaded,
    required TResult Function(UpdateResult value) updateResult,
    required TResult Function(ShowSelecteResult value) showSelecteResult,
  }) {
    return updateResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(resultLoaded value)? resultLoaded,
    TResult? Function(UpdateResult value)? updateResult,
    TResult? Function(ShowSelecteResult value)? showSelecteResult,
  }) {
    return updateResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(resultLoaded value)? resultLoaded,
    TResult Function(UpdateResult value)? updateResult,
    TResult Function(ShowSelecteResult value)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (updateResult != null) {
      return updateResult(this);
    }
    return orElse();
  }
}

abstract class UpdateResult implements LotteryResultEvent {
  const factory UpdateResult(final List<LotteryResult> updatedresult) =
      _$UpdateResultImpl;

  List<LotteryResult> get updatedresult;
  @JsonKey(ignore: true)
  _$$UpdateResultImplCopyWith<_$UpdateResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowSelecteResultImplCopyWith<$Res> {
  factory _$$ShowSelecteResultImplCopyWith(_$ShowSelecteResultImpl value,
          $Res Function(_$ShowSelecteResultImpl) then) =
      __$$ShowSelecteResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LotteryResult selectedLotteyResult});

  $LotteryResultCopyWith<$Res> get selectedLotteyResult;
}

/// @nodoc
class __$$ShowSelecteResultImplCopyWithImpl<$Res>
    extends _$LotteryResultEventCopyWithImpl<$Res, _$ShowSelecteResultImpl>
    implements _$$ShowSelecteResultImplCopyWith<$Res> {
  __$$ShowSelecteResultImplCopyWithImpl(_$ShowSelecteResultImpl _value,
      $Res Function(_$ShowSelecteResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedLotteyResult = null,
  }) {
    return _then(_$ShowSelecteResultImpl(
      null == selectedLotteyResult
          ? _value.selectedLotteyResult
          : selectedLotteyResult // ignore: cast_nullable_to_non_nullable
              as LotteryResult,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LotteryResultCopyWith<$Res> get selectedLotteyResult {
    return $LotteryResultCopyWith<$Res>(_value.selectedLotteyResult, (value) {
      return _then(_value.copyWith(selectedLotteyResult: value));
    });
  }
}

/// @nodoc

class _$ShowSelecteResultImpl
    with DiagnosticableTreeMixin
    implements ShowSelecteResult {
  const _$ShowSelecteResultImpl(this.selectedLotteyResult);

  @override
  final LotteryResult selectedLotteyResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultEvent.showSelecteResult(selectedLotteyResult: $selectedLotteyResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryResultEvent.showSelecteResult'))
      ..add(DiagnosticsProperty('selectedLotteyResult', selectedLotteyResult));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSelecteResultImpl &&
            (identical(other.selectedLotteyResult, selectedLotteyResult) ||
                other.selectedLotteyResult == selectedLotteyResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLotteyResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSelecteResultImplCopyWith<_$ShowSelecteResultImpl> get copyWith =>
      __$$ShowSelecteResultImplCopyWithImpl<_$ShowSelecteResultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resultLoaded,
    required TResult Function(List<LotteryResult> updatedresult) updateResult,
    required TResult Function(LotteryResult selectedLotteyResult)
        showSelecteResult,
  }) {
    return showSelecteResult(selectedLotteyResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resultLoaded,
    TResult? Function(List<LotteryResult> updatedresult)? updateResult,
    TResult? Function(LotteryResult selectedLotteyResult)? showSelecteResult,
  }) {
    return showSelecteResult?.call(selectedLotteyResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resultLoaded,
    TResult Function(List<LotteryResult> updatedresult)? updateResult,
    TResult Function(LotteryResult selectedLotteyResult)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (showSelecteResult != null) {
      return showSelecteResult(selectedLotteyResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(resultLoaded value) resultLoaded,
    required TResult Function(UpdateResult value) updateResult,
    required TResult Function(ShowSelecteResult value) showSelecteResult,
  }) {
    return showSelecteResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(resultLoaded value)? resultLoaded,
    TResult? Function(UpdateResult value)? updateResult,
    TResult? Function(ShowSelecteResult value)? showSelecteResult,
  }) {
    return showSelecteResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(resultLoaded value)? resultLoaded,
    TResult Function(UpdateResult value)? updateResult,
    TResult Function(ShowSelecteResult value)? showSelecteResult,
    required TResult orElse(),
  }) {
    if (showSelecteResult != null) {
      return showSelecteResult(this);
    }
    return orElse();
  }
}

abstract class ShowSelecteResult implements LotteryResultEvent {
  const factory ShowSelecteResult(final LotteryResult selectedLotteyResult) =
      _$ShowSelecteResultImpl;

  LotteryResult get selectedLotteyResult;
  @JsonKey(ignore: true)
  _$$ShowSelecteResultImplCopyWith<_$ShowSelecteResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LotteryResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LotteryResult> results) loaded,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LotteryResult> results)? loaded,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LotteryResult> results)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryResultStateCopyWith<$Res> {
  factory $LotteryResultStateCopyWith(
          LotteryResultState value, $Res Function(LotteryResultState) then) =
      _$LotteryResultStateCopyWithImpl<$Res, LotteryResultState>;
}

/// @nodoc
class _$LotteryResultStateCopyWithImpl<$Res, $Val extends LotteryResultState>
    implements $LotteryResultStateCopyWith<$Res> {
  _$LotteryResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$LotteryResultStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl with DiagnosticableTreeMixin implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LotteryResultState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LotteryResult> results) loaded,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LotteryResult> results)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LotteryResult> results)? loaded,
    TResult Function(String error)? error,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements LotteryResultState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$LoadedStateImplCopyWith<$Res> {
  factory _$$LoadedStateImplCopyWith(
          _$LoadedStateImpl value, $Res Function(_$LoadedStateImpl) then) =
      __$$LoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LotteryResult> results});
}

/// @nodoc
class __$$LoadedStateImplCopyWithImpl<$Res>
    extends _$LotteryResultStateCopyWithImpl<$Res, _$LoadedStateImpl>
    implements _$$LoadedStateImplCopyWith<$Res> {
  __$$LoadedStateImplCopyWithImpl(
      _$LoadedStateImpl _value, $Res Function(_$LoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$LoadedStateImpl(
      null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<LotteryResult>,
    ));
  }
}

/// @nodoc

class _$LoadedStateImpl with DiagnosticableTreeMixin implements LoadedState {
  const _$LoadedStateImpl(final List<LotteryResult> results)
      : _results = results;

  final List<LotteryResult> _results;
  @override
  List<LotteryResult> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultState.loaded(results: $results)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryResultState.loaded'))
      ..add(DiagnosticsProperty('results', results));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedStateImpl &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      __$$LoadedStateImplCopyWithImpl<_$LoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LotteryResult> results) loaded,
    required TResult Function(String error) error,
  }) {
    return loaded(results);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LotteryResult> results)? loaded,
    TResult? Function(String error)? error,
  }) {
    return loaded?.call(results);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LotteryResult> results)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(results);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedState implements LotteryResultState {
  const factory LoadedState(final List<LotteryResult> results) =
      _$LoadedStateImpl;

  List<LotteryResult> get results;
  @JsonKey(ignore: true)
  _$$LoadedStateImplCopyWith<_$LoadedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$LotteryResultStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl with DiagnosticableTreeMixin implements ErrorState {
  const _$ErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LotteryResultState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LotteryResultState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<LotteryResult> results) loaded,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<LotteryResult> results)? loaded,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<LotteryResult> results)? loaded,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(LoadedState value) loaded,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingState value)? loading,
    TResult? Function(LoadedState value)? loaded,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(LoadedState value)? loaded,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements LotteryResultState {
  const factory ErrorState(final String error) = _$ErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
