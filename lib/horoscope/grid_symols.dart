import 'package:flutter/material.dart';

class HoroscopeSymbol extends StatelessWidget {
  final int index;
  const HoroscopeSymbol({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            'assets/grid_image_${index}.png',
            height: 80,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
