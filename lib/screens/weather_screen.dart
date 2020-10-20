import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  int temperature=0;
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
                    Container(
                      width: 300,
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 25),
                        decoration: InputDecoration(
                          hintText: 'Search another location...',
                          hintStyle:
                          TextStyle(color: Colors.white, fontSize: 18.0),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

        ),
      
    );
  }
}
