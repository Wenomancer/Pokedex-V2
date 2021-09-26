import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';

part 'version_group_details_model.g.dart';

@JsonSerializable()
class VersionGroupDetailsModel {
  @JsonKey(name: 'level_learned_at')
  int? levelLearnedAt;
  @JsonKey(name: 'move_learn_method')
  SpeciesModel? moveLearnMethod;
  @JsonKey(name: 'version_group')
  SpeciesModel? versionGroup;

  VersionGroupDetailsModel({
    this.levelLearnedAt,
    this.moveLearnMethod,
    this.versionGroup,
  });

  factory VersionGroupDetailsModel.fromJson(Map<String, dynamic> json) => _$VersionGroupDetailsModelFromJson(json);
  Map<String, dynamic> toJson() => _$VersionGroupDetailsModelToJson(this);
}
