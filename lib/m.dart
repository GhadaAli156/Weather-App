/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/screens/search_view.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weather});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {

//var weatherModel = BlocProvider.of<GetWeatherCubit>(context).weatherModel;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                getThemeColor(weatherModel!.weatherCondition),
                getThemeColor(weatherModel.weatherCondition)[300]!,
                getThemeColor(weatherModel.weatherCondition)[50]!
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight

          )
      ),
      child: Center(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(weatherModel!.cityName,
                style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold
                ),),
              Text('updated at ${weatherModel.data.hour}:${weatherModel.data.minute}',
                style: const TextStyle(
                    fontSize: 24
                ),),
              Padding(
                padding: const EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network('https:${weatherModel.image!}'),
                    Text(weatherModel.temp.toString(),
                      style: const TextStyle(
                          fontSize: 32
                      ),),
                    Column(
                      children: [
                        Text('MaxTemp: ${weatherModel.maxTemp.round()}',
                          style: const TextStyle(
                              fontSize: 16
                          ),),
                        Text('MainTemp: ${weatherModel.minTemp.round()}',
                          style: const TextStyle(
                              fontSize: 16
                          ),)
                      ],
                    )
                  ]
                  ,),
              ),
              Text(weatherModel.weatherCondition,style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold
              ),)
            ]),
      ),
    );
  }
}*/

/*
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/home.dart';

void main() {
  runApp(
      BlocProvider(
        create: (BuildContext context) => GetWeatherCubit(),
        child: Builder(
          builder: (context) => BlocBuilder<GetWeatherCubit,WeatherState>(
            builder: (context, state) {
              return MaterialApp(
                theme: ThemeData(
                    primarySwatch: getThemeColor(
                        BlocProvider.of<GetWeatherCubit>(context).weatherModel!.weatherCondition
                    )
                ),
                debugShowCheckedModeBanner: false,
                home: HomeView(),
              );
            },
          ),
        ),
      )
  );
}

MaterialColor getThemeColor(String condition) {
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
}*/

/*
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
        child: Builder(
          builder: (context) {
            return BlocBuilder<WeatherCubit,WeatherState>(
              builder: (context, state) => MaterialApp(
                theme: ThemeData(
                  primarySwatch: getThemeColor(BlocProvider.of<WeatherCubit>(context).weatherModel!.weatherCondition)
                ),
                      home: HomeView(),
                      debugShowCheckedModeBanner: false,
                    ),
            );
          }
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
*/



