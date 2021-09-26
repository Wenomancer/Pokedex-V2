import 'package:json_annotation/json_annotation.dart';

part 'pokemon_model.g.dart';

@JsonSerializable()
class PokemonModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? url;

  PokemonModel({
    this.name,
    this.url,
  });

  factory PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);
  Map<String, dynamic> toJson() => _$PokemonModelToJson(this);
}
