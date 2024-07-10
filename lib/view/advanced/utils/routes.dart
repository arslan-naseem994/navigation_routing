import 'package:flutter/material.dart';
import 'package:navigation_routing/view/advanced/home_screen.dart';
import 'package:navigation_routing/view/advanced/screen_one.dart';
import 'package:navigation_routing/view/advanced/screen_two.dart';
import 'package:navigation_routing/view/advanced/utils/routes_names.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.homescreen:
        return MaterialPageRoute(builder: ((context) => const HomeScreen()));
      case RoutesNames.firstscreen:
        return MaterialPageRoute(
            builder: ((context) => FirstScreen(
                  data: settings.arguments as Map,
                )));
      case RoutesNames.secondscreen:
        return MaterialPageRoute(
            builder: ((context) =>  SecondScreen(
                data: settings.arguments as Map,
                )));
      default:
        return MaterialPageRoute(builder: ((context) {
          return const Scaffold(
            body: Center(child: Text('No Route defined')),
          );
        }));
    }
  }
}
