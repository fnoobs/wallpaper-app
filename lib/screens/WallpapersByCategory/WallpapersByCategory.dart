import 'package:flutter/material.dart';
import 'package:wallpaper/screens/Wallpaper/Wallpaper.dart';
import '../../data.dart';

class WallpapersByCategory extends StatelessWidget {
  static const String routeName = '/wallpaper-by-category';

  const WallpapersByCategory({Key? key}) : super(key: key);

  void handleWallpaperClick(BuildContext context, int index) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final category = arguments['category'] as String;
    Navigator.of(context).pushNamed(Wallpaper.routeName, arguments: {
      'category': category,
      'index': index,
    });
  }

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final category = arguments['category'] as String;
    final categoryName = arguments['categoryName'] as String;

    final wallpaperList = wallpapers[category];

    return Scaffold(
      backgroundColor: const Color(0XFFD9EBEF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoryName,
                style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(height: 6),
              Text(
                '10 wallpapers available',
                style:
                    Theme.of(context).textTheme.caption?.copyWith(fontSize: 14),
              ),
              SizedBox(height: 24),
              Expanded(
                child: GridView.count(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 9 / 14,
                  padding: const EdgeInsets.only(bottom: 18),
                  children: List.generate(
                    wallpaperList!.length,
                    (index) => ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Hero(
                        tag: wallpaperList[index],
                        child: GestureDetector(
                          onTap: () => handleWallpaperClick(context, index),
                          child: Image.asset(
                            wallpaperList[index],
                            height: 50,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
