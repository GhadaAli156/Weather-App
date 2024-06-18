import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/main.dart';
import 'package:new_weather_app/models/weather_model.dart';

import '../cubits/weather_cubit.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          getThemeColor(weatherModel!.weatherCondition),
          getThemeColor(weatherModel.weatherCondition)[300]!,
          getThemeColor(weatherModel.weatherCondition)[50]!
        ],begin: Alignment.topCenter,end: Alignment.bottomCenter)
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
                    Image.network('https:${weatherModel.image}'),
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
}
