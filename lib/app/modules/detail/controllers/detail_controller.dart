import 'package:get/get.dart';
import 'package:last_kingdom/app/data/model/pokemon/pokemonData/pokemon_data_model.dart';

class DetailController extends GetxController {

  late PokemonDataModel pokemonDataModel;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    pokemonDataModel = Get.arguments as PokemonDataModel;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
