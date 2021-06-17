import 'package:astro_weather_2/models/forecast/forecast.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class WeatherRepository {
  late Forecast _currentForecast;

  Forecast get getCurrentForecast => _currentForecast;
}
