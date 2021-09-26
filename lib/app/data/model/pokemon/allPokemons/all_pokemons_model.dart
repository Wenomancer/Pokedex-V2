import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemon/pokemon_model.dart';

part 'all_pokemons_model.g.dart';

@JsonSerializable(explicitToJson: true)
class AllPokemonsModel {
  @JsonKey(name: 'results')
  List<PokemonModel?>? pokemons;
  @JsonKey(name: 'count')
  int? count;
  @JsonKey(name: 'next')
  String? next;
  @JsonKey(name: 'previous')
  String? previous;

  AllPokemonsModel({
    this.count,
    this.next,
    this.pokemons,
    this.previous,
  });

  factory AllPokemonsModel.fromJson(Map<String, dynamic> json) => _$AllPokemonsModelFromJson(json);
  Map<String, dynamic> toJson() => _$AllPokemonsModelToJson(this);
}
