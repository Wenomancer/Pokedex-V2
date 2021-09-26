

import 'package:json_annotation/json_annotation.dart';

part 'species_model.g.dart';

@JsonSerializable()
class SpeciesModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'url')
  String? url;

  SpeciesModel({
    this.name,
    this.url,
  });

  factory SpeciesModel.fromJson(Map<String, dynamic> json) => _$SpeciesModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpeciesModelToJson(this);

}