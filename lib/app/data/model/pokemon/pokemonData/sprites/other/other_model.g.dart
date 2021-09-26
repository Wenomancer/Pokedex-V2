// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'other_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtherModel _$OtherModelFromJson(Map<String, dynamic> json) => OtherModel(
      dreamWorld: json['dream_world'] == null
          ? null
          : DreamWorldModel.fromJson(
              json['dream_world'] as Map<String, dynamic>),
      officialArtwork: json['official-artwork"'] == null
          ? null
          : OfficialArtworkModel.fromJson(
              json['official-artwork"'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OtherModelToJson(OtherModel instance) =>
    <String, dynamic>{
      'dream_world': instance.dreamWorld,
      'official-artwork"': instance.officialArtwork,
    };
