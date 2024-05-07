import 'package:flutter/material.dart';

import 'grid_symols.dart';

class Horoscope extends StatelessWidget {
  const Horoscope({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: 9, // Change as needed
      itemBuilder: (context, index) {
        return HoroscopeSymbol(index: index + 1);
      },
    );
  }
}
