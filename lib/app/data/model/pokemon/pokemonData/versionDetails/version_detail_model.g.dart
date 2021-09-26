// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionDetailModel _$VersionDetailModelFromJson(Map<String, dynamic> json) =>
    VersionDetailModel(
      rarity: json['rarity'] as int?,
      version: json['version'] == null
          ? null
          : SpeciesModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionDetailModelToJson(VersionDetailModel instance) =>
    <String, dynamic>{
      'rarity': instance.rarity,
      'version': instance.version,
    };
