import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/cubits/weather_cubit.dart';
import 'package:new_weather_app/cubits/weather_states.dart';
import 'package:new_weather_app/views/home_view.dart';
import 'package:new_weather_app/views/search_view.dart';

void main() {
  runApp(
      BlocProvider(
        create: (context) => WeatherCubit(),
        child: MaterialApp(
          /*theme: ThemeData(
              primarySwatch: getThemeColor(BlocProvider.of<WeatherCubit>(context).weatherModel!.weatherCondition)
          ),*/
                home: HomeView(),
                debugShowCheckedModeBanner: false,
              ),
      )
  );
}

MaterialColor getThemeColor(String condition) {
  if(condition == 0 ){
    return Colors.blue;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.yellow;
    case 'Cloudy':
      return Colors.blue;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.grey;
    case 'Patchy rain possible':
    case 'Patchy snow possible':
    case 'Patchy sleet possible':
    case 'Patchy freezing drizzle possible':
    case 'Patchy light drizzle':
    case 'Light drizzle':
    case 'Freezing drizzle':
    case 'Heavy freezing drizzle':
      return Colors.lightBlue;
    case 'Thundery outbreaks possible':
      return Colors.deepPurple;
    case 'Blowing snow':
    case 'Blizzard':
    case 'Fog':
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light rain':
    case 'Light rain':
    case 'Moderate rain at times':
    case 'Moderate rain':
    case 'Heavy rain at times':
      return Colors.lightBlue;
    case 'Heavy rain':
    case 'Light freezing rain':
    case 'Light sleet':
    case 'Moderate or heavy freezing rain':
    case 'Moderate or heavy sleet':
    case 'Patchy light snow':
    case 'Light snow':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
    case 'Heavy snow':
    case 'Ice pellets':
    case 'Light rain shower':
    case 'Moderate or heavy rain shower':
    case 'Torrential rain shower':
    case 'Light sleet showers':
    case 'Moderate or heavy sleet showers':
    case 'Light snow showers':
    case 'Moderate or heavy snow showers':
    case 'Light showers of ice pellets':
    case 'Moderate or heavy showers of ice pellets':
      return Colors.lightBlue;
    case 'Patchy light rain with thunder':
    case 'Moderate or heavy rain with thunder':
    case 'Patchy light snow with thunder':
    case 'Moderate or heavy snow with thunder':
      return Colors.deepPurple;
    default:
      return Colors.grey;
  }
}