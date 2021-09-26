import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';

part 'version_detail_model.g.dart';
@JsonSerializable()
class VersionDetailModel {
  @JsonKey(name: 'rarity')
  int? rarity;
  @JsonKey(name: 'version')
  SpeciesModel? version;

  VersionDetailModel({
    this.rarity,
    this.version,
  });

  factory VersionDetailModel.fromJson(Map<String, dynamic> json) => _$VersionDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$VersionDetailModelToJson(this);
}