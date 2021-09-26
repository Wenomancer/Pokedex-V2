// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_pokemons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllPokemonsModel _$AllPokemonsModelFromJson(Map<String, dynamic> json) =>
    AllPokemonsModel(
      count: json['count'] as int?,
      next: json['next'] as String?,
      pokemons: (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PokemonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      previous: json['previous'] as String?,
    );

Map<String, dynamic> _$AllPokemonsModelToJson(AllPokemonsModel instance) =>
    <String, dynamic>{
      'results': instance.pokemons?.map((e) => e?.toJson()).toList(),
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
    };
