// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lottery_data_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LotteryResultImpl _$$LotteryResultImplFromJson(Map<String, dynamic> json) =>
    _$LotteryResultImpl(
      lotteryName: json['lotteryName'] as String,
      date: json['date'] as String,
      viewLink: json['viewLink'] as String?,
    );

Map<String, dynamic> _$$LotteryResultImplToJson(_$LotteryResultImpl instance) =>
    <String, dynamic>{
      'lotteryName': instance.lotteryName,
      'date': instance.date,
      'viewLink': instance.viewLink,
    };
