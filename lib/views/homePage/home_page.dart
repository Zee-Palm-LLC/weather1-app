import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/homePage/components/today_weather_card.dart';
import 'package:weather_app/model/today_model.dart';
import 'package:weather_app/views/sevenDayWeather/seven_day_weather.dart';
import 'components/info_card.dart';
import 'components/weather_info_card.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.location_on,
              color: Colors.white,
            ),
            Text(
              "Minsk",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          const Center(child: InfoCard()),
          Image.asset(
            'assets/thunder.png',
            height: 250,
          ),
          const Text(
            "23°",
            style: TextStyle(
                fontSize: 80, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          const Text(
            "Thunder Clouds",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 20),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: WeatherInfoCard()),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Today',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Get.to(() =>  SevenDayWeatherView());
                    },
                    child: const Text(
                      '7 Days',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 100,
            child: ListView.separated(
                padding: const EdgeInsets.only(left: 24),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) =>
                    TodayWeatherCard(weather: todayWeather[index])),
                separatorBuilder: ((context, index) =>
                    const SizedBox(width: 10)),
                itemCount: todayWeather.length),
          )
        ],
      ),
    );
  }
}
