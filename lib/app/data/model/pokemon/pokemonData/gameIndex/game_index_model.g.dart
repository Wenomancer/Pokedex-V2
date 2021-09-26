// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_index_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameIndexModel _$GameIndexModelFromJson(Map<String, dynamic> json) =>
    GameIndexModel(
      gameIndex: json['game_index'] as int?,
      version: json['version'] == null
          ? null
          : SpeciesModel.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GameIndexModelToJson(GameIndexModel instance) =>
    <String, dynamic>{
      'game_index': instance.gameIndex,
      'version': instance.version,
    };
