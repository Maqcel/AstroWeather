import 'dart:convert';

// import 'package:astro_weather_2/config/api_key.dart';
import 'package:astro_weather_2/config/api_key.dart';
import 'package:astro_weather_2/config/exceptions/exceptions.dart';
import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:astro_weather_2/models/json/coord/coord.dart';
import 'package:astro_weather_2/models/json/description/description.dart';
import 'package:astro_weather_2/models/json/weather/weather.dart';
import 'package:astro_weather_2/models/json/wind/wind.dart';
import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class WeatherRepository {
  late Forecast _currentForecast;

  Forecast get getCurrentForecast => _currentForecast;

  Future<Either<AppExceptions, Forecast>> requestCurrentForecast({
    required String name,
    required String unit,
  }) async {
    try {
      Uri url = Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$name&appid=${ApiKey.apiKey}&units=$unit');
      final response = await http.get(url);
      final Map<String, dynamic> responseBody = json.decode(response.body);
      //? 200 int '404' String
      final String status = responseBody['cod'].toString();
      throwIf(status == '404', RequestException.cityNotFound());
      throwIf(status != '200', RequestException.requestFailure());
      Coord coord = Coord.fromJson(responseBody['coord']);
      Weather weather = Weather.fromJson(responseBody['main']);
      Wind wind = Wind.fromJson(responseBody['wind']);
      //? Map inside List
      Description description = Description.fromJson(
        responseBody['weather'][0],
      );
      Forecast forecast = Forecast(
        coord: coord,
        weather: weather,
        wind: wind,
        description: description,
      );
      return right(forecast);
    } on RequestException catch (e) {
      return left(e);
    }
  }
}
