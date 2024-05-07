import 'package:flutter/material.dart';

import 'astro_card.dart';

List<String> carouselImages = [
  "assets/portrait-white-man-isolated.jpg",
  "assets/portrait-white-man-isolated.jpg",
  "assets/portrait-white-man-isolated.jpg",
  // Add more image paths as needed
];
List<String> carouselNames = [
  "Aditya Purohit",
  "Shankar Sharma",
  "Aryan Pandey",
  // Add corresponding names for each image
];
List<String> carouselLocations = [
  "Lucknow,U.P",
  "Delhi",
  "Jaipur,Rajasthan",
  // Add corresponding locations for each image
];
List<String> carouselCategory = [
  "Love & Marriage",
  "Numerology",
  "Kundli/Horoscope",
  // Add corresponding locations for each image
];

class AstroCarousel extends StatefulWidget {
  const AstroCarousel({Key? key}) : super(key: key);

  @override
  State<AstroCarousel> createState() => _AstroCarouselState();
}

class _AstroCarouselState extends State<AstroCarousel> {
  List<bool> isFavorite = List.filled(carouselImages.length, false);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: carouselImages.length,
        itemBuilder: (BuildContext context, int index) {
          return AstroCard(
            imagePath: carouselImages[index],
            name: carouselNames[index],
            location: carouselLocations[index],
            category: carouselCategory[index],
          );
        },
      ),
    );
  }
}
