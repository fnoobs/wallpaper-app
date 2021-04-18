import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      padding: const EdgeInsets.only(left: 14, top: 4.5, right: 4),
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0XFFEEF3F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Find Wallpaper...',
          hintStyle: TextStyle(
            color: const Color(0XFFBBBDC4),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
          suffixIcon: Icon(
            Icons.search,
            color: const Color(0XFFBBBDC4).withOpacity(0.8),
          ),
          suffixStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
