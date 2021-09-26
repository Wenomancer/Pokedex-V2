
import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';

part 'game_index_model.g.dart';

@JsonSerializable()
class GameIndexModel {
  @JsonKey(name: 'game_index')
  int? gameIndex;
  @JsonKey(name: 'version')
  SpeciesModel? version;

  GameIndexModel({
    this.gameIndex,
    this.version,
  });

  factory GameIndexModel.fromJson(Map<String, dynamic> json) => _$GameIndexModelFromJson(json);
  Map<String, dynamic> toJson() => _$GameIndexModelToJson(this);
}