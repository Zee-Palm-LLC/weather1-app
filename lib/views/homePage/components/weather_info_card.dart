import 'package:flutter/material.dart';

class WeatherInfoCard extends StatelessWidget {
  const WeatherInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(0.1)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(
                        Icons.wind_power_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "35 km/h",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Wind",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.grey,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.water_drop,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "24 %",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Humidity",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.grey,
                  ),
                  Column(
                    children: const [
                      Icon(
                        Icons.water,
                        color: Colors.grey,
                      ),
                      SizedBox(height: 5),
                      Text(
                        "83%",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Rain",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            );
  }
}