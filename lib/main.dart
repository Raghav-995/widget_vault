import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_vault/views/google-map/googlemap.dart';
import 'package:widget_vault/views/mainpage.dart';
import 'package:widget_vault/views/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application .
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/firstpage',
      getPages: [
        GetPage(name: '/firstpage', page: () => const MainPage()),
        GetPage(name: '/secondpage', page: () => const SecondPage()),
        GetPage(name: '/thirdpage', page: () => const GoogleMaps()),
      ],
    );
  }
}
