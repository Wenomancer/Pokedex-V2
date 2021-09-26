import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.pokemonDataModel.name.toString()),
        toolbarHeight: 40,
        centerTitle: true,
        foregroundColor: Colors.yellow,
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 8,
                child: SvgPicture.network(
                  controller.pokemonDataModel.sprites?.other?.dreamWorld?.frontDefault ?? "",
                  semanticsLabel: controller.pokemonDataModel.name,
                  placeholderBuilder: (BuildContext context) =>
                      Container(padding: const EdgeInsets.all(30.0), child: Center(child: const CircularProgressIndicator())),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: CachedNetworkImage(
                      imageUrl: controller.pokemonDataModel.sprites?.backDefault ?? "",
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: CachedNetworkImage(
                      imageUrl: controller.pokemonDataModel.sprites?.backShiny ?? "",
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: CachedNetworkImage(
                      imageUrl: controller.pokemonDataModel.sprites?.frontDefault ?? "",
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 8,
                    child: CachedNetworkImage(
                      imageUrl: controller.pokemonDataModel.sprites?.frontShiny ?? "",
                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 8,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  itemCount: controller.pokemonDataModel.moves?.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Text('Weight: '),
                            Text(controller.pokemonDataModel.weight.toString()),
                          ],
                        ),
                      );
                    }
                    if (index == 1) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          children: [
                            Text('Height: '),
                            Text(controller.pokemonDataModel.height.toString()),
                          ],
                        ),
                      );
                    }
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Row(
                        children: [
                          Text('Move ${index - 1}: '),
                          Text(controller.pokemonDataModel.moves?[index]?.move?.name.toString() ?? "-"),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
