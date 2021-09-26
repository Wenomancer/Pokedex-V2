

import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';

part 'ability_model.g.dart';

@JsonSerializable()
class AbilityModel {
  @JsonKey(name: 'ability')
  SpeciesModel? ability;
  @JsonKey(name: 'is_hidden')
  bool? isHidden;
  @JsonKey(name: 'slot')
  int? slot;

  AbilityModel({
    this.ability,
    this.isHidden,
    this.slot,
  });

  factory AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);
  Map<String, dynamic> toJson() => _$AbilityModelToJson(this);
}