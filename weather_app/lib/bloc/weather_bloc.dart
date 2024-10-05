import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/bloc/weather_event.dart';
import 'package:weather_app/bloc/weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitialState()) {
    on<FetchWeather>((event, emit) async {
      try {
        emit(WeatherLoadingState());
        WeatherFactory wf = WeatherFactory("3885bef0380d9e02f78b2cb51a999b6d",
            language: Language.ENGLISH);
        Weather weather = await wf.currentWeatherByLocation(
            event.position.latitude, event.position.longitude);
				emit(WeatherSuccessState(weather));
      } catch (e) {
        emit(WeatherFailureState());
      }
    });
  }
}
