import 'package:flutter/material.dart';

import '../utils/colors.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String name;
  final String location;
  final String categories;

  const DetailsPage({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Astro Details',
          style: TextStyle(
            color: Pallete.mainbgcolor,
            fontSize: 25,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Pallete.mainbgcolor,
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Pallete.mainbgcolor, // Cha
                    // nge background color here
                  ),
                  onPressed: () {},
                  child: Text(
                    "EXP:4+ years",
                    style: TextStyle(
                      color: Pallete.txt2color,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                  size: 20,
                ),
                SizedBox(width: 2),
                Text(
                  '$location',
                  style: TextStyle(
                    color: Pallete.txt3color,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Experties In: ${categories}',
              style: TextStyle(
                  color: Pallete.mainbgcolor,
                  fontSize: 25,
                  fontFamily: 'Saman',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Description:\nLorem Ipsum dolor sit amet, con setetur.Lorem Ipsum dolor sit amet, con setetur.',
              style: TextStyle(
                  color: Pallete.mainbgcolor,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
          ),
          SizedBox(
            height: 65,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Pallete.mainbgcolor, // Change background color here
                ),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat_bubble_outlined, color: Pallete.txt2color),
                    SizedBox(width: 10),
                    Text(
                      "Book a Video Call",
                      style: TextStyle(
                        color: Pallete.txt2color,
                        fontSize: 17,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green, // Cha
                    // nge background color here
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.call, color: Pallete.txt2color),
                      SizedBox(width: 10),
                      Text(
                        "Call",
                        style: TextStyle(
                          color: Pallete.txt2color,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 50,
                width: 170,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Pallete.mainbgcolor, // Change background color here
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_bubble_outlined,
                          color: Pallete.txt2color),
                      SizedBox(width: 10),
                      Text(
                        "Chat",
                        style: TextStyle(
                          color: Pallete.txt2color,
                          fontSize: 17,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
