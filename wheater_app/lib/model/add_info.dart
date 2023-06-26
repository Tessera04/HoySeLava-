import 'package:flutter/material.dart';

TextStyle titleFont =
 const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
 const TextStyle(fontWeight: FontWeight.w600, fontSize: 16.0, color: Colors.blue);

Widget additionalInfo(String viento, String humedad, String termica, String lavar){
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Viento", 
                  style: titleFont,
                ),
                const SizedBox(height: 18.0,),
                Text(
                  "Humedad",
                  style: titleFont,
                ),
                const SizedBox(height: 18.0,),
                Text(
                  "Puedo Lavar?", 
                  style: titleFont,
                ),
              ],
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "$viento", 
                  style: infoFont,
                ),
                const SizedBox(height: 18.0,),
                Text(
                  "$humedad",
                  style: infoFont,
                ),
                const SizedBox(height: 18.0,),
                Text(
                  "$lavar", 
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}