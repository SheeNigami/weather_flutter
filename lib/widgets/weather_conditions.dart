
import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import 'package:flutter_weather/models/models.dart';

class WeatherConditions extends StatelessWidget {
  final WeatherCondition condition;

  WeatherConditions({Key key, @required this.condition})
      : assert(condition != null),
        super(key: key);

  @override
  Widget build(BuildContext context) => _mapConditionToImage(condition);    

  Image _mapConditionToImage(WeatherCondition condition) {
    Image image;
    switch (condition) {
      case WeatherCondition.clear:
        image = Image.asset(
          'assets/clear.png',
           width: 192,
           height: 192,
        );
        break;
      case WeatherCondition.lightCloud:
      case WeatherCondition.heavyCloud:
        image = Image.asset(
          'assets/cloudy.png',
           width: 192,
           height: 192,
        );
        break;
      case WeatherCondition.hail:
      case WeatherCondition.snow:
      case WeatherCondition.sleet:
        image = Image.asset(
          'assets/snow.png',
           width: 192,
           height: 192,
        );
        break;
      case WeatherCondition.heavyRain:
      case WeatherCondition.lightRain:
      case WeatherCondition.showers:
        image = Image.asset(
          'assets/rainy.png',
           width: 192,
           height: 192,
        );
        break;
      case WeatherCondition.thunderstorm:
        image = Image.asset(
          'assets/thunderstorm.png',
           width: 192,
           height: 192,
        );
        break;
      case WeatherCondition.unknown:
        image = Image.asset(
          'assets/clear.png',
           width: 192,
           height: 192,
        );
        break;
    }
    return image;
  }
}