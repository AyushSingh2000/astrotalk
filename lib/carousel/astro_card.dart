import 'package:flutter/material.dart';

import '../screens/astro_details.dart';
import '../utils/colors.dart';

class AstroCard extends StatefulWidget {
  final String imagePath;
  final String name;
  final String location;
  final String category;

  const AstroCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.location,
    required this.category,
  }) : super(key: key);

  @override
  State<AstroCard> createState() => _AstroCardState();
}

class _AstroCardState extends State<AstroCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(
              imagePath: widget.imagePath,
              name: widget.name,
              location: widget.location,
              categories: widget.category,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      widget.imagePath,
                      width: 200, // Adjust width as needed
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade800,
                            size: 23,
                          ),
                          SizedBox(width: 2),
                          Text(
                            "4.9",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Pallete.usercolor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      IconButton(
                        icon: Icon(
                          isFavorite ? Icons.favorite : Icons.favorite_border,
                          color: isFavorite ? Colors.red : null,
                        ),
                        onPressed: () {
                          setState(() {
                            isFavorite = !isFavorite;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.name,
                  style: TextStyle(
                    color: Pallete.mainbgcolor,
                    fontSize: 21,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 2),
                  Text(
                    widget.location,
                    style: TextStyle(
                      color: Pallete.txt3color,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  widget.category,
                  style: TextStyle(
                    color: Pallete.mainbgcolor,
                    fontSize: 23,
                    fontFamily: 'Saman',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: Text(
                  "₹ 5.00/min",
                  style: TextStyle(
                    color: Pallete.usercolor,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Pallete.mainbgcolor, // Change background color here
                      ),
                      onPressed: () {},
                      child: Text(
                        "Call",
                        style: TextStyle(
                          color: Pallete.txt2color,
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Pallete.mainbgcolor, // Change background color here
                      ),
                      onPressed: () {},
                      child: Text(
                        "Chat",
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
            ],
          ),
        ),
      ),
    );
  }
}
