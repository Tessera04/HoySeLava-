import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wheater_app/model/weather_model.dart';

class WeatherApiClient{
  Future<Weather2>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=6321e2106304d9793d42460d6a662f15&units=metric&lang=es");

    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather2.fromJson(body).cityName);
    return Weather2.fromJson(body);
  }
}