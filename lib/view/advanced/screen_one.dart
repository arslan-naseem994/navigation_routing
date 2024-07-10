import 'package:flutter/material.dart';
import 'package:navigation_routing/view/advanced/utils/routes_names.dart';

class FirstScreen extends StatefulWidget {
  dynamic data;
  FirstScreen({super.key, required this.data});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('FirstScreen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.secondscreen,
                        arguments: {'Name': 'second screen data'});
                  },
                  child: const Text('SecondScreen')),
            ),
            Text(widget.data['Name'])
          ],
        ));
  }
}
