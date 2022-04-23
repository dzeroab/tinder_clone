import 'package:flutter/material.dart';
import 'package:tinder/data/data.dart';

import 'di/di.dart';
import 'ui/home_screen.dart';

void main() async {
  await setupDi(ApiConfig(baseUrl: "https://dummyapi.io/data/v1/", appId: '6262f1329b7aee7e5263a4ea'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tinder Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}
