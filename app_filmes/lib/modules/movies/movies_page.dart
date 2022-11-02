import 'package:app_filmes/modules/movies/widgets/movies_filters.dart';
import 'package:app_filmes/modules/movies/widgets/movies_group.dart';
import 'package:app_filmes/modules/movies/widgets/movies_header.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './movies_controller.dart';

class MoviesPage extends GetView<MoviesController> {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: ListView(children: [
        const MoviesHeader(),
        const MoviesFilters(),
        MoviesGroup(
          title: 'Mais populares',
          movies: controller.popularMovies,
        ),
        MoviesGroup(
          title: 'Top filmes',
          movies: controller.topRatedMovies,
        ),
      ]),
    );
  }
}
