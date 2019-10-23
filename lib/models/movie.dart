import 'package:json_annotation/json_annotation.dart'; 
  
part 'movie.g.dart';


@JsonSerializable()
  class Entity extends Object {

  @JsonKey(name: 'msg')
  String msg;

  @JsonKey(name: 'status')
  int status;

  @JsonKey(name: 'data')
  Data data;

  Entity(this.msg,this.status,this.data,);

  factory Entity.fromJson(Map<String, dynamic> srcJson) => _$EntityFromJson(srcJson);

  Map<String, dynamic> toJson() => _$EntityToJson(this);

}

  
@JsonSerializable()
  class Data extends Object {

  @JsonKey(name: 'movieList')
  List<MovieList> movieList;

  Data(this.movieList,);

  factory Data.fromJson(Map<String, dynamic> srcJson) => _$DataFromJson(srcJson);

  Map<String, dynamic> toJson() => _$DataToJson(this);

}

  
@JsonSerializable()
  class MovieList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'haspromotionTag')
  bool haspromotionTag;

  @JsonKey(name: 'img')
  String img;

  @JsonKey(name: 'version')
  String version;

  @JsonKey(name: 'nm')
  String nm;

  @JsonKey(name: 'preShow')
  bool preShow;

  @JsonKey(name: 'sc')
  int sc;

  @JsonKey(name: 'globalReleased')
  bool globalReleased;

  @JsonKey(name: 'wish')
  int wish;

  @JsonKey(name: 'star')
  String star;

  @JsonKey(name: 'rt')
  String rt;

  @JsonKey(name: 'showInfo')
  String showInfo;

  @JsonKey(name: 'showst')
  int showst;

  @JsonKey(name: 'wishst')
  int wishst;

  MovieList(this.id,this.haspromotionTag,this.img,this.version,this.nm,this.preShow,this.sc,this.globalReleased,this.wish,this.star,this.rt,this.showInfo,this.showst,this.wishst,);

  factory MovieList.fromJson(Map<String, dynamic> srcJson) => _$MovieListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$MovieListToJson(this);

}
