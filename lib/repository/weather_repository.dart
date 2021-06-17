import 'dart:convert';

import 'package:astro_weather_2/config/api_key.dart';
import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class WeatherRepository {
  late Forecast _currentForecast;

  Forecast get getCurrentForecast => _currentForecast;

  Future<void> requestCurrentForecast({
    required String name,
  }) async {
    try {
      Uri url = Uri.parse(
          'api.openweathermap.org/data/2.5/weather?q=Łódź&appid=c7803ea5bcc1c63f5c8f8235a8689a94&units=metric');
      final response = await http.get(url);
      print(response.body);
      final Map<String, dynamic> responseBody = json.decode(response.body);
      print(responseBody);
    } catch (e) {
      print(e);
    }
  }
}
