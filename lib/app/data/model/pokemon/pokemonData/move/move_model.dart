

import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/versionGroupDetailsModel/version_group_details_model.dart';

part 'move_model.g.dart';

@JsonSerializable()
class MoveModel {

  @JsonKey(name: 'move')
  SpeciesModel? move;
  @JsonKey(name: 'version_group_details')
  List<VersionGroupDetailsModel?>? versionGroupDetails;

  MoveModel({
    this.move,
    this.versionGroupDetails,
  });

  factory MoveModel.fromJson(Map<String, dynamic> json) => _$MoveModelFromJson(json);
  Map<String, dynamic> toJson() => _$MoveModelToJson(this);

}