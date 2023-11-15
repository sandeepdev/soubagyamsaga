// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lottery_data_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LotteryResult _$LotteryResultFromJson(Map<String, dynamic> json) {
  return _LotteryResult.fromJson(json);
}

/// @nodoc
mixin _$LotteryResult {
  String get lotteryName => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get viewLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LotteryResultCopyWith<LotteryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LotteryResultCopyWith<$Res> {
  factory $LotteryResultCopyWith(
          LotteryResult value, $Res Function(LotteryResult) then) =
      _$LotteryResultCopyWithImpl<$Res, LotteryResult>;
  @useResult
  $Res call({String lotteryName, String date, String? viewLink});
}

/// @nodoc
class _$LotteryResultCopyWithImpl<$Res, $Val extends LotteryResult>
    implements $LotteryResultCopyWith<$Res> {
  _$LotteryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryName = null,
    Object? date = null,
    Object? viewLink = freezed,
  }) {
    return _then(_value.copyWith(
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      viewLink: freezed == viewLink
          ? _value.viewLink
          : viewLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LotteryResultImplCopyWith<$Res>
    implements $LotteryResultCopyWith<$Res> {
  factory _$$LotteryResultImplCopyWith(
          _$LotteryResultImpl value, $Res Function(_$LotteryResultImpl) then) =
      __$$LotteryResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lotteryName, String date, String? viewLink});
}

/// @nodoc
class __$$LotteryResultImplCopyWithImpl<$Res>
    extends _$LotteryResultCopyWithImpl<$Res, _$LotteryResultImpl>
    implements _$$LotteryResultImplCopyWith<$Res> {
  __$$LotteryResultImplCopyWithImpl(
      _$LotteryResultImpl _value, $Res Function(_$LotteryResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lotteryName = null,
    Object? date = null,
    Object? viewLink = freezed,
  }) {
    return _then(_$LotteryResultImpl(
      lotteryName: null == lotteryName
          ? _value.lotteryName
          : lotteryName // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      viewLink: freezed == viewLink
          ? _value.viewLink
          : viewLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LotteryResultImpl implements _LotteryResult {
  _$LotteryResultImpl(
      {required this.lotteryName, required this.date, required this.viewLink});

  factory _$LotteryResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$LotteryResultImplFromJson(json);

  @override
  final String lotteryName;
  @override
  final String date;
  @override
  final String? viewLink;

  @override
  String toString() {
    return 'LotteryResult(lotteryName: $lotteryName, date: $date, viewLink: $viewLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LotteryResultImpl &&
            (identical(other.lotteryName, lotteryName) ||
                other.lotteryName == lotteryName) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.viewLink, viewLink) ||
                other.viewLink == viewLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lotteryName, date, viewLink);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LotteryResultImplCopyWith<_$LotteryResultImpl> get copyWith =>
      __$$LotteryResultImplCopyWithImpl<_$LotteryResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LotteryResultImplToJson(
      this,
    );
  }
}

abstract class _LotteryResult implements LotteryResult {
  factory _LotteryResult(
      {required final String lotteryName,
      required final String date,
      required final String? viewLink}) = _$LotteryResultImpl;

  factory _LotteryResult.fromJson(Map<String, dynamic> json) =
      _$LotteryResultImpl.fromJson;

  @override
  String get lotteryName;
  @override
  String get date;
  @override
  String? get viewLink;
  @override
  @JsonKey(ignore: true)
  _$$LotteryResultImplCopyWith<_$LotteryResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
