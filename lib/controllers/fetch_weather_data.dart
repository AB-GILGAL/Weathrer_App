import 'dart:convert';

import 'package:flutter_application_2/controllers/api_key.dart';
import 'package:flutter_application_2/models/weather_model/weather_data.dart';
import 'package:flutter_application_2/models/weather_model/weather_model.dart';
import 'package:http/http.dart' as http;

class FetchWeatherData{
  WeatherData? weatherData;

  Future<WeatherData> getWeatherData(lat, lng)async{
    var response = await http.get(Uri.parse(apiUrl(lat, lng)));
    var jsonData = await jsonDecode(response.body);
    weatherData = WeatherData(WeatherDataCurrent.fromJson(jsonData));
    print(response.body);
    return weatherData!;
  }
}
String apiUrl(var lat, var lng){
  String url = "https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lng&appid=$apiKey&units=metric";

  return url;
}