class Weather {
  String name = '';
  String description = '';
  double temperature = 0;
  double perceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather();

  factory Weather.fromJson(Map<String, dynamic> weatherMap) {
    Weather weather = Weather();

    weather.name = weatherMap['name'];
    weather.temperature = (weatherMap['main']['temp'] * (9 / 5) - 459.67) ?? 0;
    weather.perceived =
        (weatherMap['main']['feels_like'] * (9 / 5) - 459.67) ?? 0;
    weather.pressure = weatherMap['main']['pressure'] ?? 0;
    weather.humidity = weatherMap['main']['humidity'] ?? 0;
    weather.description = weatherMap['weather'][0]['main'] ?? '';

    return weather;
  }
}
