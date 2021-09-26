// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) => TypeModel(
      slot: json['slot'] as int?,
      type: json['type'] == null
          ? null
          : SpeciesModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeModelToJson(TypeModel instance) => <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };
