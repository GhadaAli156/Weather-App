import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_weather_app/cubits/weather_cubit.dart';
import 'package:new_weather_app/views/search_view.dart';
import 'package:new_weather_app/widget/no_weather_body.dart';
import 'package:new_weather_app/widget/weather_info_body.dart';

import '../cubits/weather_states.dart';
class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Weather App",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchView(),));
          }, icon: const Icon(Icons.search,color: Colors.white,)),
        ],
      ),
     body: BlocBuilder<WeatherCubit,WeatherState>(
       builder:(context, state) {
         if(state is WeatherInitialState)
           return Center(child: NoWeatherBody());
         else if(state is WeatherLoadedState){
           return WeatherInfoBody(weatherModel: state.weatherModel);
         }
         else{
           return Center(child: const Text('opps there was an error'));
         }
       },)
    );
  }
  
}