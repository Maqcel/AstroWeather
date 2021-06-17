import 'package:astro_weather_2/models/json/coord/coord.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class HivePlace {
  HivePlace({
    required this.name,
    required this.coord,
  });

  @HiveField(0)
  String name;

  @HiveField(1)
  Coord coord;

  @override
  String toString() {
    return 'Name: $name cords: ${coord.toString()}';
  }
}
