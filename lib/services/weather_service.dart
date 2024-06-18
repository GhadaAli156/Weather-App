import 'dart:developer';

import 'package:dio/dio.dart';

import '../models/weather_model.dart';

class WeatherService{
  final Dio dio;
  final String baseUrl='http://api.weatherapi.com/v1';
  final String apiKey='cd64d4e1ee8a43a69d5202911231909';

  WeatherService(this.dio);
Future<WeatherModel> getWeather({required String cityName}) async{
  Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3');;
  try{
    Response response = await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=3');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
  on DioException catch(e){
    final String errorMessage = e.response?.data['error']['message']??'oops there was an error, try later';
    throw Exception(errorMessage);
  }
  catch(e){
    log(e.toString());
    throw Exception('oops there was an error, try later');
  }
}
}