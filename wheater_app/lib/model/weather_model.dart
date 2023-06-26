class Weather2{
  String? cityName;
  double? temp;
  double? viento;
  int? humedad;
  double? termica;
  String? status;

  Weather2({
    this.cityName,
    this.humedad,
    this.temp,
    this.termica,
    this.viento,
    this.status
  });

  Weather2.fromJson(Map<String, dynamic> json){
    cityName = json["name"];
    temp = json["main"]["temp"];
    viento = json["wind"]["speed"];
    humedad = json["main"]["humidity"];
    termica = json["main"]["feels_like"];
    status = json["weather"][0]["description"];
  }
}