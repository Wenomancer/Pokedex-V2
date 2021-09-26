import 'package:last_kingdom/app/data/constant/app_constants.dart';
import 'package:last_kingdom/app/data/model/pokemon/allPokemons/all_pokemons_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemon/pokemon_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/pokemon_data_model.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'pokemon_client.g.dart';

@RestApi(baseUrl: AppConstants.POKEMON_BASE_URL)
abstract class PokemonClient {
  factory PokemonClient(Dio dio) = _PokemonClient;

  @GET(AppConstants.ALL_POKEMONS_END_POINT)
  Future<HttpResponse<AllPokemonsModel>> getAllPokemons({
    @Query("offset") int? offset,
    @Query("limit") int? limit,
  });

  @GET("{path}")
  Future<HttpResponse<AllPokemonsModel>> getAllPokemonsLoadMore({
    @Path("path") String? path,
  });

  @GET(AppConstants.ALL_POKEMONS_END_POINT + "{name}")
  Future<HttpResponse<PokemonDataModel>> getPokemon({
    @Path('name') String? name,
  });
}
