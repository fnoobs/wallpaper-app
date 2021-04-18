import 'package:flutter/material.dart';
import 'package:wallpaper/screens/Wallpaper/Wallpaper.dart';
import 'package:wallpaper/screens/WallpapersByCategory/WallpapersByCategory.dart';
import 'package:wallpaper/screens/home/home.screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallpaper',
      theme: ThemeData(
        primaryColor: const Color(0XFF3F64F5),
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        WallpapersByCategory.routeName: (_) => WallpapersByCategory(),
        Wallpaper.routeName: (_) => Wallpaper(),
      },
    );
  }
}
