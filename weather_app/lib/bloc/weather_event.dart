import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';

class WeatherEvent extends Equatable {
  const WeatherEvent();
  @override
  List<Object> get props => [];
}

class FetchWeather extends WeatherEvent {
  Position position;
  FetchWeather(this.position);

  @override
  List<Object> get props => [];
}
