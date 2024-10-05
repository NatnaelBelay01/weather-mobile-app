import 'package:equatable/equatable.dart';
import 'package:weather/weather.dart';



class WeatherState extends Equatable{
	
	const WeatherState();

	@override
	List<Object> get props => [];
}


class WeatherInitialState extends WeatherState{}


class WeatherLoadingState extends WeatherState{}
class WeatherFailureState extends WeatherState{}
class WeatherSuccessState extends WeatherState{
	final Weather weather;
	const WeatherSuccessState(this.weather);
	
	@override
	List<Object> get props => [weather];
}
