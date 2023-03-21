import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  final int id;
  final String title;
  @JsonKey(name: 'overview')
  final String synopsis;
  @JsonKey(name: 'poster_path')
  final String posterUrl;
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final int runtime;
  final List<String> categories;
  final String director;
  final List<String> cast;
  final double pressRating;
  final double audienceRating;
  @JsonKey(name: 'trailer_url')
  final String trailerUrl;

  Movie({
    required this.id,
    required this.title,
    required this.synopsis,
    required this.posterUrl,
    required this.releaseDate,
    required this.runtime,
    required this.categories,
    required this.director,
    required this.cast,
    required this.pressRating,
    required this.audienceRating,
    required this.trailerUrl,
  });

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
