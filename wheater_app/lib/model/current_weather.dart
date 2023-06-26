import 'package:flutter/material.dart';
import 'package:weather/weather.dart';
import 'dart:developer' as devLog;

String cityName = 'Buenos Aires';


void main() async {
  WeatherFactory weatherFactory = WeatherFactory('6321e2106304d9793d42460d6a662f15', language: Language.SPANISH);

  Weather weather = await weatherFactory.currentWeatherByCityName(cityName);
  devLog.log(weather.weatherDescription.toString(), name: 'myLog');
}

Widget currentWeather(IconData icon, String temp, String locat, String status){
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade200,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade200,
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(2, 4),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.orange.shade500,
            size: 64.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$temp",
            style: const TextStyle(
              fontSize: 46.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$locat",
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$status",
            style: const TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
      ),
    );
}



/*



  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade200,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.shade200,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(2, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    icon,
                    color: Colors.orange.shade500,
                    size: 64.0,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const SizedBox(width: 32.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        temp,
                        style: const TextStyle(
                          fontSize: 38,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        status,
                        style: const TextStyle(
                          fontSize: 28,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),




            Icon(
          icon,
          color: Colors.orange.shade500,
          size: 64.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$temp",
          style: const TextStyle(
            fontSize: 46.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$locat",
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          "$status",
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
*/