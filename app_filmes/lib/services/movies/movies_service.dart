import 'package:app_filmes/models/movie_model.dart';

abstract class MoviesService {
  Future<List<MovieModel>> getPopularesMovies();
  Future<List<MovieModel>> getTopRated();
}
