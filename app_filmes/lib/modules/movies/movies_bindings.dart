import 'package:app_filmes/application/rest_client/rest_client.dart';
import 'package:app_filmes/repositories/genres/genres_repository.dart';
import 'package:app_filmes/repositories/genres/genres_repository_impl.dart';
import 'package:app_filmes/services/genres/genres_service.dart';
import 'package:app_filmes/services/genres/genres_service_impl.dart';
import 'package:get/get.dart';
import './movies_controller.dart';

class MoviesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GenresRepository>(
        () => GenresRepositoryImpl(restClient: Get.find()));
    Get.lazyPut<GenresService>(
        () => GenresServiceImpl(genresRepository: Get.find()));
    Get.lazyPut(() => MoviesController(genresService: Get.find()));
  }
}