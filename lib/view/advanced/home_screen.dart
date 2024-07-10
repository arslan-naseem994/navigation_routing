import 'package:flutter/material.dart';
import 'package:navigation_routing/view/advanced/utils/routes_names.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesNames.firstscreen,
                    arguments: {'Name': 'Home screen data'});
              },
              child: const Text('FirstScreen'))),
    );
  }
}
