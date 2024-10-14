// import 'package:flutter/material.dart';
// import 'package:weather_app/Model/weather_data.dart';
// import 'package:weather_app/screen/api.dart';


// class ScreenHome extends StatefulWidget {
//   const ScreenHome({super.key});

//   @override
//   State<ScreenHome> createState() => _ScreenHomeState();
// }

// class _ScreenHomeState extends State<ScreenHome> {
//   // late WeatherData weatherInfo;
//   //bool isLoading = false;
//   // myWeather() {
//   // WeatherService();
//   // WeatherService().getCurrentWeather(String location)
//   // // isLoading = true;
//   // WeatherService().fetchWeather().then((value) {
//   // setState(() {
//   //   weatherInfo = value;
//   //   // isLoading = true;
//   // });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[400],
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('Images/image.png'),
//             fit: BoxFit.fill,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: SearchBar(
//                 hintText: 'search any Location',
//                 onSubmitted: (value) {
//                   _getdataweather(value);
//                   // _buildsearchWidget(value);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // _buildsearchWidget(value) async {
//   //   if ((_getdataweather(value)) == null) {
//   //     throw Exception('Please Type Something');
//   //   }
//   // }
//   _getdataweather(String location) async {
//     final weether = await OpenWeatherapi().getCurrentWeather(location);
//     weether;
//   }
// }

// @override
// // void initState() {
// //   WeatherData(
// //     cityName: '',
// //     temperature: Temperature(current: 0.0),
// //     weather: [],
// //   );
// //   myWeather();
// //   super.initState();
// //  }

// // @override
// // Widget build(BuildContext context) {
// //   String formattedDate = DateFormat('EEEE d, MMMM yyyy').format(
// //     DateTime.now(),
// //   );
// //   String formattedTime = DateFormat('hh:mm a').format(
// //     DateTime.now(),
// //   );
// //   // return Scaffold(
// //   //   backgroundColor: Colors.blueGrey[400],
// //   //   body: Container(
// //   //     decoration: const BoxDecoration(
// //   //       image: DecorationImage(
// //   //         image: AssetImage('Images/image.png'),
// //   //         fit: BoxFit.fill,
// //   //       ),
// //   //     ),
// //     child: Column(
// //       mainAxisAlignment: MainAxisAlignment.center,
// //       children: [
// //         Padding(
// //           padding: const EdgeInsets.all(15.0),
// //           child: const SearchBar(
// //             hintText: 'search any Location',
// //   //           ),
// //   //         ),
// //   //         // Padding(
// //   //         //   padding: const EdgeInsets.fromLTRB(28, 28, 28, 3),
// //   //         //   child: TextField(
// //   //         //     decoration: InputDecoration(
// //   //         //       border: OutlineInputBorder(
// //   //         //         borderRadius: BorderRadius.circular(30),
// //   //         //       ),
// //   //         //       hintText: 'Search the city name for weather ',
// //   //         //     ),
// //   //         //   ),
// //   //         // ),
// //   //         // TextButton(
// //   //         //   onPressed: () {},
// //   //         //   child: const Text(
// //   //         //     'Get Weather',
// //   //         //     style: TextStyle(
// //   //         //         color: Colors.black,
// //   //         //         fontSize: 14,
// //   //         //         fontWeight: FontWeight.bold),
// //   //         //   ),
// //   //         // ),
// //   //         // Center(
// //   //         //     child: WeatherDetail(
// //   //         //   formattedDate: formattedDate,
// //   //         //   formattedTime: formattedTime,
// //   //         // )),
// //   //       ],
// //   //     ),
// //   //   ),
// //   // );
// // }

// class WeatherDetail extends StatelessWidget {
//   final WeatherData weather;
//   final String formattedDate;
//   final String formattedTime;
//   const WeatherDetail(
//       {super.key,
//       required this.weather,
//       required this.formattedDate,
//       required this.formattedTime});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//         // child: Column(
//         //   children: [
//         //     //current address
//         //     Text('')
//         // Text(
//         //   weather.cityName,
//         //   style: const TextStyle(
//         //     fontSize: 27,
//         //     color: Colors.black,
//         //     fontWeight: FontWeight.bold,
//         //   ),
//         // ),
//         // //current temperature
//         // Text(
//         //   "${weather.temperature.current.toStringAsFixed(2)}°C",
//         //   style: const TextStyle(
//         //     fontSize: 40,
//         //     color: Colors.black,
//         //     fontWeight: FontWeight.bold,
//         //   ),
//         // ),
//         // const SizedBox(height: 5),
//         // Text(
//         //   formattedDate,
//         //   style: const TextStyle(
//         //     fontSize: 17,
//         //     color: Colors.black,
//         //     fontWeight: FontWeight.bold,
//         //   ),
//         // ),
//         // Text(
//         //   formattedTime,
//         //   style: const TextStyle(
//         //     fontSize: 17,
//         //     color: Colors.black,
//         //     fontWeight: FontWeight.bold,
//         //   ),
//         // ),
// //         ],
// //       ),
//         );
//   }
// }
