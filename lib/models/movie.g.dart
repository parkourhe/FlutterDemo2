// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entity _$EntityFromJson(Map<String, dynamic> json) {
  return Entity(
    json['msg'] as String,
    json['status'] as int,
    json['data'] == null
        ? null
        : Data.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EntityToJson(Entity instance) => <String, dynamic>{
      'msg': instance.msg,
      'status': instance.status,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    (json['movieList'] as List)
        ?.map((e) =>
            e == null ? null : MovieList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'movieList': instance.movieList,
    };

MovieList _$MovieListFromJson(Map<String, dynamic> json) {
  return MovieList(
    json['id'] as int,
    json['haspromotionTag'] as bool,
    json['img'] as String,
    json['version'] as String,
    json['nm'] as String,
    json['preShow'] as bool,
    json['sc'] as int,
    json['globalReleased'] as bool,
    json['wish'] as int,
    json['star'] as String,
    json['rt'] as String,
    json['showInfo'] as String,
    json['showst'] as int,
    json['wishst'] as int,
  );
}

Map<String, dynamic> _$MovieListToJson(MovieList instance) => <String, dynamic>{
      'id': instance.id,
      'haspromotionTag': instance.haspromotionTag,
      'img': instance.img,
      'version': instance.version,
      'nm': instance.nm,
      'preShow': instance.preShow,
      'sc': instance.sc,
      'globalReleased': instance.globalReleased,
      'wish': instance.wish,
      'star': instance.star,
      'rt': instance.rt,
      'showInfo': instance.showInfo,
      'showst': instance.showst,
      'wishst': instance.wishst,
    };
