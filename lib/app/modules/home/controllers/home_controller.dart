import 'package:get/get.dart';
import 'package:last_kingdom/app/data/model/pokemon/allPokemons/all_pokemons_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemon/pokemon_model.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/pokemon_data_model.dart';
import 'package:last_kingdom/app/network/client/pokemon_client.dart';
import 'package:dio/dio.dart';
import 'package:last_kingdom/app/network/interceptor/logger_interceptor.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/dio.dart';

class HomeController extends GetxController {

  late AllPokemonsModel allPokemonsModel;
  List<PokemonModel?>? pokemons = [];
  List<PokemonDataModel?>? pokemonsWithDataList = [];
  late PokemonClient pokemonClient;

  RxBool isLoading = RxBool(false);

  @override
  void onInit() {
    super.onInit();
    Dio dio = Dio();
    dio.interceptors.add(LoggerInterceptor());
    pokemonClient = PokemonClient(dio);
    getAllPokemons(limit: 20, offset: 0);
  }

  void toggleIsLoading(){
    isLoading.value = !isLoading.value;
    update([POKEMON_DASHBOARD_CONTROLLER_ID]);
  }
  
  void loadMore(){
    getAllPokemonsLoadMore(path: allPokemonsModel.next);
  }

  Future<void> getAllPokemons({required int limit, required int offset}) async {
    try {
      await pokemonClient.getAllPokemons(limit: limit, offset: offset).then((httpResponse) {
        final response = httpResponse.response;
        final responseData = httpResponse.data;
        if(response.requestOptions.validateStatus(response.statusCode)){
          final pokemonList = responseData.pokemons;
          allPokemonsModel = responseData;
          if(pokemonList != null){
            pokemons = pokemonList;
            pokemonList.forEach((element) {
              getPokemon(name: element?.name);
            });
            update([POKEMON_DASHBOARD_CONTROLLER_ID]);
            Logger().e(pokemonsWithDataList?.length);
          }
        }
      }).catchError((error) {});
    } catch (e) {}
  }

  Future<void> getAllPokemonsLoadMore({required String? path}) async {
    try {
      await pokemonClient.getAllPokemonsLoadMore(path: path).then((httpResponse) {
        final response = httpResponse.response;
        final responseData = httpResponse.data;
        if(response.requestOptions.validateStatus(response.statusCode)){
          final pokemonList = responseData.pokemons;
          allPokemonsModel = responseData;
          if(pokemonList != null){
            pokemonList.forEach((element) {
              pokemons?.add(element);
              getPokemon(name: element?.name);
            });
            update([POKEMON_DASHBOARD_CONTROLLER_ID]);
            Logger().e(pokemonsWithDataList?.length);
            toggleIsLoading();
          }
        }
      }).catchError((error) {});
    } catch (e) {}
  }

  Future<void> getPokemon({required String? name}) async {
    try {
      await pokemonClient.getPokemon(name: name).then((httpResponse) {
        final response = httpResponse.response;
        final responseData = httpResponse.data;
        if(response.requestOptions.validateStatus(response.statusCode)){
          final pokemonData = responseData;
          if(pokemonData != null){
            pokemonsWithDataList?.add(pokemonData);
            update([POKEMON_DASHBOARD_CONTROLLER_ID]);
            Logger().e(pokemonsWithDataList?.length);
            Logger().wtf(pokemonData.sprites?.frontDefault);
          }
        }
      }).catchError((error) {});
    } catch (e) {}
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  static const String POKEMON_DASHBOARD_CONTROLLER_ID = "pokemon_dashboard_controller_id";
}
