import 'package:json_annotation/json_annotation.dart';

part 'dream_world_model.g.dart';

@JsonSerializable()
class DreamWorldModel {
  @JsonKey(name: 'front_default')
  String? frontDefault;
  @JsonKey(name: 'front_female')
  String? frontFemale;

  DreamWorldModel({
    this.frontDefault,
    this.frontFemale,
  });

  factory DreamWorldModel.fromJson(Map<String, dynamic> json) => _$DreamWorldModelFromJson(json);
  Map<String, dynamic> toJson() => _$DreamWorldModelToJson(this);
}
