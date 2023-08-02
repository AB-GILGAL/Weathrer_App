import 'package:flutter_application_2/models/weather_model/weather_model.dart';

class WeatherData{
  final WeatherDataCurrent? current;

  WeatherData([this.current]);

  WeatherDataCurrent getCurrentWeather() => current!;
}