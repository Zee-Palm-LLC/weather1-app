class TodayModel {
  String temperature;
  String time;
  TodayModel({
    required this.temperature,
    required this.time,
  });
}

List<TodayModel> todayWeather = [
  TodayModel(temperature: '23', time: '9:00 am'),
  TodayModel(temperature: '20', time: '10:00 am'),
  TodayModel(temperature: '19', time: '11:00 am'),
  TodayModel(temperature: '25', time: '12:00 pm'),
  TodayModel(temperature: '29', time: '1:00 am'),
];
