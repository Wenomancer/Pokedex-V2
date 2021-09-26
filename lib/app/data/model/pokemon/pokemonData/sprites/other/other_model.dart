

import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/sprites/dreamWorld/dream_world_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/sprites/officialArtwork/official_artwork_model.dart';

part 'other_model.g.dart';

@JsonSerializable()
class OtherModel {
  @JsonKey(name: 'dream_world')
  DreamWorldModel? dreamWorld;
  @JsonKey(name: 'official-artwork"')
  OfficialArtworkModel? officialArtwork;

  OtherModel({
    this.dreamWorld,
    this.officialArtwork,
  });

  factory OtherModel.fromJson(Map<String, dynamic> json) => _$OtherModelFromJson(json);
  Map<String, dynamic> toJson() => _$OtherModelToJson(this);

}