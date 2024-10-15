import 'package:flutter/material.dart';
import 'package:weather_app/screen/hoome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 4);
    Future.delayed(d, () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (ctx) => ScreenHome(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'weather_app/Images/image.png',
              ),
              fit: BoxFit.fill),
        ),
      ),
    );
  }
}
