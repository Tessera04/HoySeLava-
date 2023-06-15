import 'package:flutter/material.dart';
import 'package:weather/weather.dart';

WeatherFactory weatherFactory = WeatherFactory("6321e2106304d9793d42460d6a662f15");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        title: const Text('Cuando lavo?',
          style: TextStyle(
            color: Colors.white70,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          const Text('Hoy no conviene', 
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0,),
          const Text('Hoy si conviene',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0,),
          Image.asset('images/soleado.png'),
        ],
      ),
    );
  }
}