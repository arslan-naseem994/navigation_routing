import 'package:flutter/material.dart';
import 'package:navigation_routing/view/advanced/utils/routes_names.dart';

class SecondScreen extends StatefulWidget {
  dynamic data;
  SecondScreen({super.key, required this.data});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Second_Screen'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesNames.homescreen,
                        arguments: {'Name': 'data from previous screen'});
                  },
                  child: const Text('SecondScreen')),
            ),
            Text(widget.data['Name'])
          ],
        ));
  }
}
