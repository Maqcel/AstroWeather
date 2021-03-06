import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '/config/api_key.dart';
import '/constants.dart';
import '/config/exceptions/exceptions.dart';
import '/models/forecast/forecast.dart';
import '/models/json/coord/coord.dart';
import '/models/json/description/description.dart';
import '/models/json/weather/weather.dart';
import '/models/json/wind/wind.dart';

@lazySingleton
class WeatherRepository {
  late Forecast _currentForecast;
  Map<String, Forecast> _favoritesMap = {};

  Forecast get getCurrentForecast => _currentForecast;
  Map<String, Forecast> get getFavoritesMap => _favoritesMap;

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
        timestamp: DateFormat(Constants.dateTimeFormat).format(DateTime.now()),
        name: name,
        coord: coord,
        weather: weather,
        wind: wind,
        description: description,
        units: unit,
      );
      Box<Forecast> hiveDb = Hive.box<Forecast>(Constants.hiveForecastsBoxKey);
      hiveDb.put(Constants.lastForecastKey, forecast);
      return right(forecast);
    } on RequestException catch (e) {
      return left(e);
    } on SocketException catch (_) {
      return left(const RequestException.requestFailure());
    }
  }

  Future<Either<AppExceptions, List<Forecast>>> requestFutureForecast({
    required String name,
    required String unit,
  }) async {
    try {
      Uri url = Uri.parse(
          'https://api.openweathermap.org/data/2.5/forecast?q=$name&appid=${ApiKey.apiKey}&units=$unit');
      final response = await http.get(url);
      final Map<String, dynamic> responseBody = json.decode(response.body);
      //? 200 int '404' String
      final String status = responseBody['cod'].toString();
      throwIf(status == '404', RequestException.cityNotFound());
      throwIf(status != '200', RequestException.requestFailure());
      List<Forecast> forecasts = [];
      List<dynamic> list = responseBody['list'];
      list.forEach(
        (element) {
          Map<String, dynamic> convert = element as Map<String, dynamic>;
          if (convert['dt_txt'].toString().contains('15:00:00')) {
            Weather weather = Weather.fromJson(convert['main']);
            Wind wind = Wind.fromJson(convert['wind']);
            //? Map inside List
            Description description = Description.fromJson(
              convert['weather'][0],
            );
            Forecast forecast = Forecast(
              timestamp: DateFormat(Constants.dateTimeFormat).format(
                DateTime.parse(
                  convert['dt_txt'],
                ),
              ),
              name: name,
              coord: Coord(lon: 0.0, lat: 0.0),
              weather: weather,
              wind: wind,
              description: description,
              units: unit,
            );
            forecasts.add(forecast);
          }
        },
      );

      return right(forecasts);
    } on RequestException catch (e) {
      return left(e);
    } on SocketException catch (_) {
      return left(const RequestException.requestFailure());
    }
  }

  Future<Either<AppExceptions, Forecast>> loadLastForecast() async {
    Box<Forecast> hiveDb = Hive.box<Forecast>(Constants.hiveForecastsBoxKey);
    Forecast? lastForecast = hiveDb.get(Constants.lastForecastKey);
    Box<Map> hiveDbFav = Hive.box<Map>(Constants.hiveFavoritesBoxKey);
    Map? data = hiveDbFav.get(Constants.hiveFavoritesBoxKey);
    if (data == null) data = Map<String, Forecast>();
    Map<String, Forecast> favoritesForecasts = data.cast<String, Forecast>();
    _favoritesMap = favoritesForecasts;
    if (lastForecast != null) return right(lastForecast);
    return left(const HiveException.noDataFound());
  }

  void addFavoriteForecast(Forecast forecast) {
    Box<Map> hiveDb = Hive.box<Map>(Constants.hiveFavoritesBoxKey);
    Map? data = hiveDb.get(Constants.hiveFavoritesBoxKey);
    if (data == null) data = Map<String, Forecast>();
    Map<String, Forecast> favoritesForecasts = data.cast<String, Forecast>();
    favoritesForecasts[forecast.name] = forecast;
    hiveDb.put(Constants.hiveFavoritesBoxKey, favoritesForecasts);
  }

  void removeFavoriteForecast(Forecast forecast) {
    Box<Map> hiveDb = Hive.box<Map>(Constants.hiveFavoritesBoxKey);
    Map? data = hiveDb.get(Constants.hiveFavoritesBoxKey);
    if (data == null) data = Map<String, Forecast>();
    Map<String, Forecast> favoritesForecasts = data.cast<String, Forecast>();
    favoritesForecasts.remove(forecast.name);
    hiveDb.put(Constants.hiveFavoritesBoxKey, favoritesForecasts);
  }
}
