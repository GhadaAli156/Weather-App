import 'package:flutter/material.dart';
class NoWeatherBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("there is no weather 😞 start",
            style: TextStyle(
                fontSize: 25
            ),),
          Text("searching now 🔍",
            style: TextStyle(
                fontSize: 25
            ),)
        ],
      ),
    );
  }

}