// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AbilityModel _$AbilityModelFromJson(Map<String, dynamic> json) => AbilityModel(
      ability: json['ability'] == null
          ? null
          : SpeciesModel.fromJson(json['ability'] as Map<String, dynamic>),
      isHidden: json['is_hidden'] as bool?,
      slot: json['slot'] as int?,
    );

Map<String, dynamic> _$AbilityModelToJson(AbilityModel instance) =>
    <String, dynamic>{
      'ability': instance.ability,
      'is_hidden': instance.isHidden,
      'slot': instance.slot,
    };
