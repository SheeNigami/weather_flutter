import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather/widgets/weather.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_weather/weather_api.dart';

class SimpleBlocDelegate extends BlocDelegate {
  @override 
  onTransition(Transition transition) {
    print(transition);
  }
}

void main() {
  BlocSupervisor().delegate = SimpleBlocDelegate();

  final WeatherApi weatherApi = WeatherApi(
    httpClient: http.Client(), 
  );

  runApp(App(weatherApi: weatherApi,));
}

class App extends StatelessWidget {
  final WeatherApi weatherApi;

  App({Key key, @required this.weatherApi})
      : assert(weatherApi != null),
        super(key: key);

  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Flutter Weather', 
      home: WeatherWidget(
        weatherApi: weatherApi,
      ),
    );
  }
}

