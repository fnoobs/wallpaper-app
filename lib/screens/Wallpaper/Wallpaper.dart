import 'package:flutter/material.dart';
import '../../data.dart';

class Wallpaper extends StatefulWidget {
  static const String routeName = '/wallpaper';

  const Wallpaper({Key? key}) : super(key: key);

  @override
  _WallpaperState createState() => _WallpaperState();
}

class _WallpaperState extends State<Wallpaper> {
  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final category = arguments['category'] as String;
    final index = arguments['index'] as int;

    List<String> wallpaperList = wallpapers[category]!;
    final list1 = wallpaperList.getRange(index, wallpaperList.length).toList();
    final list2 = wallpaperList.getRange(0, index);
    wallpaperList = [...list1, ...list2];

    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              wallpaperList.length,
              (index) => Hero(
                tag: wallpaperList[index],
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        wallpaperList[index],
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              color: Colors.white70,
              icon: Icon(Icons.download_rounded),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
