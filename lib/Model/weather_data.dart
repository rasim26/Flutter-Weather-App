// class WeatherData {
//   final String cityName;
//   final Temperature temperature;
//   final List<WeatherInfo> weather;

//   WeatherData({
//     required this.cityName,
//     required this.temperature,
//     required this.weather,
//   });

//   factory WeatherData.fromJson(Map<String, dynamic> json) {
//     return WeatherData(
//       cityName: json['name'],
//       temperature: Temperature.fromJson(json['main']['temp'] - 273.15),
//       weather: List<WeatherInfo>.from(
//         json['weather'].map(
//           (weather) => WeatherInfo.fromJson(weather),
//         ),
//       ),
//     );
//   }
// }

// class WeatherInfo {
//   final String main;

//   WeatherInfo({
//     required this.main,
//   });

//   factory WeatherInfo.fromJson(Map<String, dynamic> json) {
//     return WeatherInfo(
//       main: json['main'],
//     );
//   }
// }

// class Temperature {
//   final double current;

//   Temperature({required this.current});

//   factory Temperature.fromJson(dynamic json) {
//     return Temperature(
//       current: (json), // Kelvin to Celsius
//     );
//   }
// }
