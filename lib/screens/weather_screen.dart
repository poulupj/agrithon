import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int temperature=33;
  String location='Thrissur';


  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/weather/clear.png'),
              fit: BoxFit.cover
          ),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      temperature.toString()+' °C',
                      style: TextStyle(color: Colors.white,fontSize: 60.0),
                    ),
                    Text(
                      location,
                      style: TextStyle(color: Colors.white,fontSize: 40.0),
                    )
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 3.0,
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text("Today"),
                        subtitle: Text("Sunny"),
                        trailing: Text("33°/28°"),
                      ),
                    ) ,
                    Card(
                      elevation: 3.0,
                      color: Colors.transparent,
                      child: ListTile(
                        leading: Icon(Icons.cloud),
                        title: Text("Tommorow"),
                        subtitle: Text("Cloudy"),
                        trailing: Text("30°/23°"),
                      ),
                    )
                  ],
                ),
              ],
            ),

        ),
      
    );
  }
}
