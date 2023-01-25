import 'package:flutter/material.dart';
import 'package:flutter_first_wearos_app/app_screens/home.dart';
import 'package:flutter_first_wearos_app/widgets/watch/view_watch_active.dart';
import 'package:flutter_first_wearos_app/widgets/watch/view_watch_ambient.dart';
import 'package:wear/wear.dart';

/// View for [DailyForecastRoute] for watch-sized devices.
///
/// Wear OS devices can operate in one of two states: ambient and active.
/// Ambient mode is when the user has not raised the watch and it is, for
/// example, just hanging by the user's side. In this mode, the background
/// is set to black to conserve battery consumption. Ambient mode is mostly
/// passive and contains no interactive UI elements.
///
/// Active mode is when the user is engaged in using the watch and is typically
/// activated by the "raise to wake" gesture. In active mode, a richer UI is
/// used and interactions are implemented.
class ViewWatch extends StatelessWidget {
  final HomeController state;

  const ViewWatch(this.state, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WatchShape(
      builder: (BuildContext context, WearShape shape, Widget? child) {
        return AmbientMode(
          builder: (context, mode, child) {
            return mode == WearMode.active
                ? ViewWatchActive(state)
                : ViewWatchAmbient(state);
          },
        );
      },
    );
  }
}
