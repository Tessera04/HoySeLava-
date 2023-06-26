import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'package:wheater_app/services/weather_api_client.dart';
import 'package:wheater_app/views/add_info.dart';
import 'package:wheater_app/model/current_weather.dart';
import 'package:wheater_app/model/weather_model.dart';

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
  WeatherApiClient client = WeatherApiClient();
  Weather2? data;

  Future<void> getData() async{
    data = await client.getCurrentWeather("London");
  }

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
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                currentWeather(Icons.wb_sunny_rounded, "${data!.temp}°", "${data!.cityName}", "${data!.status}"),
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
                const Divider(),
                const SizedBox(
                  height: 20.0,
                ),
                additionalInfo("${data!.viento}", "${data!.humedad}%", "${data!.termica}°", "Si se puede lavar")
              ],
            );
          }
          return Container();
        },
      )
    );
  }
}