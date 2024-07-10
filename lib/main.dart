import 'package:flutter/material.dart';
import 'package:navigation_routing/view/advanced/utils/routes.dart';
import 'package:navigation_routing/view/advanced/utils/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation_routings',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      // for native way
      // home: HomeScreen(),

      // for advnaced
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id: (context) => const HomeScreen(),
      //   FirstScreen.id: (context) => const FirstScreen(),
      //   SecondScreen.id: (context) => const SecondScreen()
      // },

      // for advanced
      initialRoute: RoutesNames.homescreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
