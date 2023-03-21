import 'package:app_cinemovida/src/features/data/provider/api_provider.dart';
import 'package:app_cinemovida/src/features/domain/entities/movie.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiProvider = Provider<ApiProvider>((ref) => ApiProvider());
final movieRepositoryProvider = Provider<MovieRepository>((ref) => MovieRepository(ref.watch(apiProvider)));

class MovieRepository {
  final ApiProvider _apiProvider;

  MovieRepository(this._apiProvider);

  Future<List<Movie>> fetchMovies() async {
    final response = await _apiProvider.get('movie/popular');

    if (response.statusCode == 200) {
      final movies = List<Movie>.from(response.data['results'].map((m) => Movie.fromJson(m)));
      return movies;
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
