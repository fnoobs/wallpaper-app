import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/data.dart';
import 'package:wallpaper/screens/WallpapersByCategory/WallpapersByCategory.dart';
import 'package:wallpaper/screens/home/components/BestOfTheMonth.dart';
import 'package:wallpaper/screens/home/components/CategoryItem.dart';
import 'package:wallpaper/screens/home/components/SearchInput.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  const HomeScreen({Key? key}) : super(key: key);

  void handleCategoryClick({
    required BuildContext context,
    required String category,
    required String categoryName,
  }) {
    Navigator.of(context).pushNamed(
      WallpapersByCategory.routeName,
      arguments: {
        'category': category,
        'categoryName': categoryName,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFD9EBEF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchInput(),
                SizedBox(height: 24),
                BestOfTheMonth(),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text(
                    'Categories',
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(height: 18),
                Container(
                  height: 390,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: 16 / 9,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    children: [
                      GestureDetector(
                        onTap: () {
                          handleCategoryClick(
                            context: context,
                            category: 'abstractImages',
                            categoryName: 'Abstract',
                          );
                        },
                        child: CategoryItem(
                          imageUrl: wallpapers['abstractImages']![0],
                          text: 'Abstract',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          handleCategoryClick(
                            context: context,
                            category: 'animeImages',
                            categoryName: 'Anime',
                          );
                        },
                        child: CategoryItem(
                          imageUrl: wallpapers['animeImages']![0],
                          text: 'Anime',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          handleCategoryClick(
                            context: context,
                            category: 'natureImages',
                            categoryName: 'Nature',
                          );
                        },
                        child: CategoryItem(
                          imageUrl: wallpapers['natureImages']![0],
                          text: 'Nature',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          handleCategoryClick(
                            context: context,
                            category: 'carsImage',
                            categoryName: 'Cars',
                          );
                        },
                        child: CategoryItem(
                          imageUrl: wallpapers['carsImage']![0],
                          text: 'Cars',
                        ),
                      ),
                      CategoryItem(
                        imageUrl: 'assets/images/games.jpg',
                        text: 'Games',
                      ),
                      CategoryItem(
                        imageUrl: 'assets/images/love.jpg',
                        text: 'Love',
                      ),
                      CategoryItem(
                        imageUrl: 'assets/images/music.jpg',
                        text: 'Music',
                      ),
                      CategoryItem(
                        imageUrl: 'assets/images/other.jpg',
                        text: 'Other',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
