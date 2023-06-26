import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:wheater_app/model/add_info.dart';
import 'package:wheater_app/model/current_weather.dart';

WeatherFactory weatherFactory = WeatherFactory("6321e2106304d9793d42460d6a662f15");

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        leading: IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu),
          color: Colors.white70,
          ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeather(Icons.wb_sunny_rounded, "26.3", "Buenos Aires", "Soleado"),
          const SizedBox(
            height: 65.0,
          ),
          const Text(
            "Informacion Adicional",
            style: TextStyle(
              fontSize: 20.0, 
              color: Colors.blue,
            ),
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          additionalInfo("24", "2", "25g", "Si se puede lavar")
        ],
      ),
    );
  }
}
