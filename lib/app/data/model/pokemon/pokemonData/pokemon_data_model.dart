import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/ability/ability_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/gameIndex/game_index_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/heldItem/held_item_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/sprites/sprites_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/type/type_model.dart';
import 'move/move_model.dart';

part 'pokemon_data_model.g.dart';

@JsonSerializable()
class PokemonDataModel {
  @JsonKey(name: 'abilities')
  List<AbilityModel?>? abilities;
  @JsonKey(name: 'base_experience')
  int? baseExperience;
  @JsonKey(name: 'forms')
  List<SpeciesModel?>? forms;
  @JsonKey(name: 'game_indices')
  List<GameIndexModel?>? gameIndices;
  @JsonKey(name: 'height')
  int? height;
  @JsonKey(name: 'held_items')
  List<HeldItemModel?>? heldItems;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'is_default')
  bool? isDefault;
  @JsonKey(name: 'location_area_encounters')
  String? locationAreaEncounters;
  @JsonKey(name: 'moves')
  List<MoveModel?>? moves;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'order')
  int? order;
  @JsonKey(name: 'species')
  SpeciesModel? species;
  @JsonKey(name: 'sprites')
  SpritesModel? sprites;
  @JsonKey(name: 'types')
  List<TypeModel?>? types;
  @JsonKey(name: 'weight')
  int? weight;

  PokemonDataModel({
    this.abilities,
    this.baseExperience,
    this.forms,
    this.gameIndices,
    this.height,
    this.heldItems,
    this.id,
    this.isDefault,
    this.locationAreaEncounters,
    this.moves,
    this.name,
    this.order,
    this.species,
    this.sprites,
    this.types,
    this.weight,
});

  factory PokemonDataModel.fromJson(Map<String, dynamic> json) => _$PokemonDataModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonDataModelToJson(this);
}
