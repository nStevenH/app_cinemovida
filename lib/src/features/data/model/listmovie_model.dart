import 'package:app_cinemovida/src/features/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieListState extends StateNotifier<List<Movie>> {
  MovieListState() : super([]);

  void addMovies(List<Movie> movies) {
    state = [...state, ...movies];
  }

  void clear() {
    state = [];
  }
}

final movieListProvider = StateNotifierProvider((_) => MovieListState());
