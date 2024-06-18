import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/cubits/weather_states.dart';
import 'package:new_weather_app/services/weather_service.dart';

import '../models/weather_model.dart';

class WeatherCubit extends Cubit<WeatherState>{
  WeatherCubit():super(WeatherInitialState());

  WeatherModel? weatherModel;
  getWeather ({required String cityName}) async{
    try{
      weatherModel = await WeatherService(Dio()).getWeather(cityName: cityName);
      emit(WeatherLoadedState(weatherModel: weatherModel!));
    }
    catch(e){
      emit(WeatherFailureState(errorMessage: e.toString()));
    }
  }
}