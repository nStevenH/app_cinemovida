// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      id: json['id'] as int,
      title: json['title'] as String,
      synopsis: json['overview'] as String,
      posterUrl: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      runtime: json['runtime'] as int,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      director: json['director'] as String,
      cast: (json['cast'] as List<dynamic>).map((e) => e as String).toList(),
      pressRating: (json['pressRating'] as num).toDouble(),
      audienceRating: (json['audienceRating'] as num).toDouble(),
      trailerUrl: json['trailer_url'] as String,
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'overview': instance.synopsis,
      'poster_path': instance.posterUrl,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'categories': instance.categories,
      'director': instance.director,
      'cast': instance.cast,
      'pressRating': instance.pressRating,
      'audienceRating': instance.audienceRating,
      'trailer_url': instance.trailerUrl,
    };
