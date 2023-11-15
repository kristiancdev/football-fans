import 'dart:async';
import 'package:flutter/material.dart';
import 'package:football_fan/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/background_splash.jpg', // Asegúrate de reemplazar "nombre_de_tu_imagen.jpg" con el nombre real de tu imagen.
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(
                0.6), // Puedes ajustar la opacidad según tus preferencias.
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/uefa.png',
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              const Text(
                'Created with ❤️ by KristiancDev',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
