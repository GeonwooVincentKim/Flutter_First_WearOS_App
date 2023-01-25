import 'package:flutter/material.dart';
import 'package:flutter_first_wearos_app/app_screens/home.dart';

/// View for [DailyForecastRoute] for watch-sized devices while the watch
/// is in an active mode.
class ViewWatchActive extends StatelessWidget {
  final HomeController state;

  const ViewWatchActive(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text("Hello World!!")
        // child: WeatherForecast(state: state),
      ),
    );
  }
}
