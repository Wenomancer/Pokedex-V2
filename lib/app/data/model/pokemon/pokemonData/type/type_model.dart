import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';

part 'type_model.g.dart';

@JsonSerializable()
class TypeModel {
  @JsonKey(name: 'slot')
  int? slot;
  @JsonKey(name: 'type')
  SpeciesModel? type;

  TypeModel({
    this.slot,
    this.type,
  });

  factory TypeModel.fromJson(Map<String, dynamic> json) => _$TypeModelFromJson(json);
  Map<String, dynamic> toJson() => _$TypeModelToJson(this);
}