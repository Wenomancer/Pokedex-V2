// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PokemonDataModel _$PokemonDataModelFromJson(Map<String, dynamic> json) =>
    PokemonDataModel(
      abilities: (json['abilities'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      baseExperience: json['base_experience'] as int?,
      forms: (json['forms'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : SpeciesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gameIndices: (json['game_indices'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : GameIndexModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      height: json['height'] as int?,
      heldItems: (json['held_items'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : HeldItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int?,
      isDefault: json['is_default'] as bool?,
      locationAreaEncounters: json['location_area_encounters'] as String?,
      moves: (json['moves'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : MoveModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      order: json['order'] as int?,
      species: json['species'] == null
          ? null
          : SpeciesModel.fromJson(json['species'] as Map<String, dynamic>),
      sprites: json['sprites'] == null
          ? null
          : SpritesModel.fromJson(json['sprites'] as Map<String, dynamic>),
      types: (json['types'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : TypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      weight: json['weight'] as int?,
    );

Map<String, dynamic> _$PokemonDataModelToJson(PokemonDataModel instance) =>
    <String, dynamic>{
      'abilities': instance.abilities,
      'base_experience': instance.baseExperience,
      'forms': instance.forms,
      'game_indices': instance.gameIndices,
      'height': instance.height,
      'held_items': instance.heldItems,
      'id': instance.id,
      'is_default': instance.isDefault,
      'location_area_encounters': instance.locationAreaEncounters,
      'moves': instance.moves,
      'name': instance.name,
      'order': instance.order,
      'species': instance.species,
      'sprites': instance.sprites,
      'types': instance.types,
      'weight': instance.weight,
    };
