import 'package:flutter/material.dart';
import '../../../data.dart';

class BestOfTheMonth extends StatelessWidget {
  const BestOfTheMonth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            'Best of the month',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        SizedBox(height: 18),
        Container(
          height: 200,
          child: ListView.separated(
            itemCount: wallpapers['bestWallpapers']!.length,
            padding: const EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Hero(
                  tag: wallpapers['bestWallpapers']![index],
                  child: Image.asset(
                    wallpapers['bestWallpapers']![index],
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
            },
            separatorBuilder: (ctx, index) {
              return SizedBox(width: 12);
            },
          ),
        )
      ],
    );
  }
}
