// import 'package:http/http.dart' as http;


// class WeatherService {
//   // fetchWeather() async {
//   //   final response = await http.get(
//   //     Uri.parse(
//   //         //"https://api.openweathermap.org/data/2.5/weather?lat=11.0510&lon=76.0711&appid=3a3d68e751fee927df8c688f09accedd"),
//   //         "https://api.openweathermap.org/data/2.5/weather?q=malappuram&appid=3a3d68e751fee927df8c688f09accedd"),
//   //     //this link is provided by openweather website's current location part.
//   //     //replaced the api key from the Api key provided by openweather website
//   //     //replaced the lattitude and longitude by current place.
//   //   );
//   //   try {
//   //     if (response.statusCode == 200) {
//   //       var json = jsonDecode(response.body);
//   //       return WeatherData.fromJson(json);
//   //     } else {
//   //       throw Exception('Failed to load Weather data');
//   //     }
//   //   } catch (e) {
//   //     print(e.toString());
//   //   }
//   // }

//   getCurrentWeather(String location) async {
//     const String defaultUrl =
//         "https://api.openweathermap.org/data/2.5/weather?q=malappuram&appid=3a3d68e751fee927df8c688f09accedd";
//     String apiUrl =
//         "$defaultUrl?key=3a3d68e751fee927df8c688f09accedd&q=$location";
//     try {
//       final response = await http.get(Uri.parse(apiUrl));
//       if (response.statusCode == 200) {
//         print(response.body);
//       } else {
//         throw Exception("Failed to Load Data");
//       }
//     } catch (e) {
//       throw Exception("Failed to Load Data");
//     }
//   }
// }
