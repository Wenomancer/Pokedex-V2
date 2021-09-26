import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:last_kingdom/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder(
          init: homeController,
          id: HomeController.POKEMON_DASHBOARD_CONTROLLER_ID,
          builder: (_) => Column(
                  children: [
                    Expanded(
                      child: NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          if (!homeController.isLoading.value && scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                            homeController.toggleIsLoading();
                            homeController.loadMore();
                          }
                          return true;
                        },
                        child: GridView.builder(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisExtent: 180),
                          itemCount: homeController.pokemonsWithDataList?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              elevation: 8,
                              child: InkWell(
                                onTap: () {
                                  Get.toNamed(Routes.DETAIL, arguments: homeController.pokemonsWithDataList?[index]);
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                     CachedNetworkImage(
                                      imageUrl: homeController.pokemonsWithDataList?[index]?.sprites?.frontDefault ?? "",
                                      placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                    ),
                                    Text(
                                      homeController.pokemonsWithDataList?[index]?.name ?? "",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Container(
                      height: homeController.isLoading.value ? 50.0 : 0,
                      color: Colors.transparent,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
