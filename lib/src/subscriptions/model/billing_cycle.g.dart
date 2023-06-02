// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_cycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillingCycle _$BillingCycleFromJson(Map<String, dynamic> json) => BillingCycle(
      pricingScheme: json['pricing_scheme'] == null
          ? null
          : PricingScheme.fromJson(
              json['pricing_scheme'] as Map<String, dynamic>),
      frequency: Frequency.fromJson(json['frequency'] as Map<String, dynamic>),
      tenureType: $enumDecode(_$TenureTypeEnumMap, json['tenure_type']),
      sequence: json['sequence'] as int?,
      totalCycles: json['total_cycles'] as int?,
    );

Map<String, dynamic> _$BillingCycleToJson(BillingCycle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pricing_scheme', instance.pricingScheme);
  val['frequency'] = instance.frequency;
  val['tenure_type'] = _$TenureTypeEnumMap[instance.tenureType]!;
  writeNotNull('sequence', instance.sequence);
  writeNotNull('total_cycles', instance.totalCycles);
  return val;
}

const _$TenureTypeEnumMap = {
  TenureType.regular: 'REGULAR',
  TenureType.trial: 'TRIAL',
};

CycleExecution _$CycleExecutionFromJson(Map<String, dynamic> json) =>
    CycleExecution(
      tenureType: $enumDecode(_$TenureTypeEnumMap, json['tenure_type']),
      sequence: json['sequence'] as int,
      cyclesCompleted: json['cycles_completed'] as int,
      cyclesRemaining: json['cycles_remaining'] as int?,
    );

Map<String, dynamic> _$CycleExecutionToJson(CycleExecution instance) {
  final val = <String, dynamic>{
    'tenure_type': _$TenureTypeEnumMap[instance.tenureType]!,
    'sequence': instance.sequence,
    'cycles_completed': instance.cyclesCompleted,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cycles_remaining', instance.cyclesRemaining);
  return val;
}
