// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:weather_app/Model/weather_data.dart';

// class OpenWeatherapi {
//   final String defaultUrl =
//       "https://api.openweathermap.org/data/2.5/weather?q={city name}&appid=3a3d68e751fee927df8c688f09accedd";

//   Future<WeatherData> getCurrentWeather(String location) async {
//     // String apiUrl =
//     //     "$defaultUrl&key=$apikey&q=$location";
//     try {
//       final response = await http.get(Uri.parse(
//           "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=3a3d68e751fee927df8c688f09accedd"));
//       if (response.statusCode == 200) {
//         return WeatherData.fromJson(jsonDecode(response.body));
//       } else {
//         throw Exception('Failed to Load Weather Data');
//       }
//     } catch (e) {
//       throw Exception('Failed to Load Weather Data');
//     }
//   }
// }
