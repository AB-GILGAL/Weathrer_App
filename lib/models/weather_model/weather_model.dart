import 'coord.dart';
import 'main.dart';
import 'weather.dart';
import 'wind.dart';

class WeatherDataCurrent {
  final WeatherModel current;

  WeatherDataCurrent({required this.current});

  factory WeatherDataCurrent.fromJson(Map<String, dynamic> json) =>
      WeatherDataCurrent(current: WeatherModel.fromJson(json["current"]));
}

class WeatherModel {
  Coord? coord;
  List<Weather>? weather;
  Main? main;
  int? visibility;
  Wind? wind;

  WeatherModel({
    this.coord,
    this.weather,
    this.main,
    this.visibility,
    this.wind,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        coord: json['coord'] == null
            ? null
            : Coord.fromJson(json['coord'] as Map<String, dynamic>),
        weather: (json['weather'] as List<dynamic>?)
            ?.map((e) => Weather.fromJson(e as Map<String, dynamic>))
            .toList(),
        main: json['main'] == null
            ? null
            : Main.fromJson(json['main'] as Map<String, dynamic>),
        visibility: json['visibility'] as int?,
        wind: json['wind'] == null
            ? null
            : Wind.fromJson(json['wind'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'coord': coord?.toJson(),
        'weather': weather?.map((e) => e.toJson()).toList(),
        'main': main?.toJson(),
        'visibility': visibility,
        'wind': wind?.toJson(),
      };
}
