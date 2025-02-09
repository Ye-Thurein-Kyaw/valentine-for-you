import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'pages/splash/view/splash_page.dart';
import 'utils/routes.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Thae Ei Kyaw',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      getPages: getpages,
      initialRoute: Splash.route,
    );
  }
}

