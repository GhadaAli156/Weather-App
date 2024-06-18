import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/cubits/weather_cubit.dart';
import 'package:new_weather_app/models/weather_model.dart';
import 'package:new_weather_app/services/weather_service.dart';
class SearchView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Search a City',
          style: TextStyle(color: Colors.white),),
      ),
       body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              onSubmitted: (value) async{
                var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: value);
                Navigator.pop(context);
              },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 32,horizontal: 16),
              hintText: 'Enter City Name',
              labelText: 'Search',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.green
                )
              ),
              )
            ),
        ),
      ),
      );
  }

}