import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/Model/weether_data.dart';

class OpenWeatherapi {
  final String apiKey = "3a3d68e751fee927df8c688f09accedd";

  Future<WeatherData> getCurrentWeather(String location) async {
    final String apiUrl =
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=$apiKey";

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        return WeatherData.fromJson(jsonDecode(response.body));
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Failed to load weather data');
    }
  }
}
