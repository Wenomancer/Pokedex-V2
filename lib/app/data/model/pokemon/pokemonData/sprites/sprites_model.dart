import 'package:json_annotation/json_annotation.dart';

import 'other/other_model.dart';

part 'sprites_model.g.dart';

@JsonSerializable()
class SpritesModel {
  @JsonKey(name: 'back_default')
  String? backDefault;
  @JsonKey(name: 'back_female')
  String? backFemale;
  @JsonKey(name: 'back_shiny')
  String? backShiny;
  @JsonKey(name: 'back_shiny_female')
  String? backShinyFemale;
  @JsonKey(name: 'front_default')
  String? frontDefault;
  @JsonKey(name: 'front_female')
  String? frontFemale;
  @JsonKey(name: 'front_shiny')
  String? frontShiny;
  @JsonKey(name: 'front_shiny_female')
  String? frontShinyFemale;
  @JsonKey(name: 'other')
  OtherModel? other;

  SpritesModel({
    this.backDefault,
    this.backFemale,
    this.backShiny,
    this.backShinyFemale,
    this.frontDefault,
    this.frontFemale,
    this.frontShiny,
    this.frontShinyFemale,
    this.other,
});

  factory SpritesModel.fromJson(Map<String, dynamic> json) => _$SpritesModelFromJson(json);
  Map<String, dynamic> toJson() => _$SpritesModelToJson(this);
}
