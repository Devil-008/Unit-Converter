import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unitconverterapp/pages/home_page.dart';
import 'pages/next_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        'homepage': (context) => HomePage(),
        'nextpage1': (context) => NextPage1(
              appBarName: '',
              unitItems: [],
            ),
      },
      themeMode: ThemeMode.system,
      title: 'unit converter app',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}
