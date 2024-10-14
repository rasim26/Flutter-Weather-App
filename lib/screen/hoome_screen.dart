import 'package:flutter/material.dart';
import 'package:weather_app/Model/weether_data.dart';
import 'package:weather_app/screen/apis.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  WeatherData? weatherInfo;
  bool isLoading = false;
  String errorMessage = '';
  @override
  void initState() {
    _getWeatherData('Malappuram');
    super.initState();
  }

  Future<void> _refresh() async {
    setState(() {
      isLoading = false;
      weatherInfo = null;
    });
  }

  Future<void> _getWeatherData(String location) async {
    setState(() {
      isLoading = true;
      errorMessage = '';
    });
    try {
      final data = await OpenWeatherapi().getCurrentWeather(location);
      setState(() {
        weatherInfo = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
        errorMessage = 'Failed to fetch weather data';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: const Text(
          'Weather App',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[400],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/image.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              'Get Real-Time Updates for Any City !',
              strutStyle: StrutStyle(fontSize: 30),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: 'Search any location',
                  icon: const Icon(Icons.wb_cloudy_outlined),
                ),
                onChanged: (value) {
                  _refresh();
                },
                onSubmitted: (value) {
                  _getWeatherData(value);
                },
              ),
            ),
            isLoading
                ? const CircularProgressIndicator(
                    color: Colors.black,
                  )
                : weatherInfo != null
                    ? WeatherDetail(weather: weatherInfo!)
                    : errorMessage.isNotEmpty
                        ? Text(errorMessage,
                            style: const TextStyle(color: Colors.red))
                        : const Text('Search for a city to see weather'),
          ],
        ),
      ),
    );
  }
}

class WeatherDetail extends StatelessWidget {
  final WeatherData weather;

  const WeatherDetail({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.cityName,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "${weather.temperature.current.toStringAsFixed(2)}°C",
          style: const TextStyle(
            fontSize: 40,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          weather.weather.first.main,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
