class Weather{
  String? cityName;
  double? temp;
  double? viento;
  int? humedad;
  double? termica;

  Weather({
    this.cityName,
    this.humedad,
    this.temp,
    this.termica,
    this.viento
  });

  Weather.fromJson(Map<String, dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    viento = json["wind"]["speed"];
    humedad = json["main"]["humidity"];
    termica = json["main"]["feels_like"];
  }
}