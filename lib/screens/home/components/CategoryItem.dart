import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            imageUrl,
            fit: BoxFit.fitWidth,
            width: double.infinity,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black38,
          ),
        ),
        Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 18,
                      color: const Color(0XFFF8F6F6),
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
