
import 'package:json_annotation/json_annotation.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/species/species_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/versionDetails/version_detail_model.dart';

part 'held_item_model.g.dart';

@JsonSerializable()
class HeldItemModel {
  @JsonKey(name: 'item')
  SpeciesModel? item;
  @JsonKey(name: 'version_details')
  List<VersionDetailModel?>? versionDetails;

  HeldItemModel({
    this.item,
    this.versionDetails,
  });

  factory HeldItemModel.fromJson(Map<String, dynamic> json) => _$HeldItemModelFromJson(json);
  Map<String, dynamic> toJson() => _$HeldItemModelToJson(this);
}