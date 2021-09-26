// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_group_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionGroupDetailsModel _$VersionGroupDetailsModelFromJson(
        Map<String, dynamic> json) =>
    VersionGroupDetailsModel(
      levelLearnedAt: json['level_learned_at'] as int?,
      moveLearnMethod: json['move_learn_method'] == null
          ? null
          : SpeciesModel.fromJson(
              json['move_learn_method'] as Map<String, dynamic>),
      versionGroup: json['version_group'] == null
          ? null
          : SpeciesModel.fromJson(
              json['version_group'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionGroupDetailsModelToJson(
        VersionGroupDetailsModel instance) =>
    <String, dynamic>{
      'level_learned_at': instance.levelLearnedAt,
      'move_learn_method': instance.moveLearnMethod,
      'version_group': instance.versionGroup,
    };
