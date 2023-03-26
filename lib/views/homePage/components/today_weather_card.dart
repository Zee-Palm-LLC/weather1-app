import 'package:flutter/material.dart';
import 'package:weather_app/model/today_model.dart';

class TodayWeatherCard extends StatelessWidget {
  final TodayModel weather;
  const TodayWeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 75,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Text(
            "${weather.temperature}°",
            style: const TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Image.asset('assets/thunder.png', height: 40),
          Text(
            weather.time,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
