// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'move_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MoveModel _$MoveModelFromJson(Map<String, dynamic> json) => MoveModel(
      move: json['move'] == null
          ? null
          : SpeciesModel.fromJson(json['move'] as Map<String, dynamic>),
      versionGroupDetails: (json['version_group_details'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : VersionGroupDetailsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MoveModelToJson(MoveModel instance) => <String, dynamic>{
      'move': instance.move,
      'version_group_details': instance.versionGroupDetails,
    };
