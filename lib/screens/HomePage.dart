import 'package:astrotalk/utils/colors.dart';
import 'package:astrotalk/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../carousel/carousel.dart';
import '../horoscope/horoscope_grid.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.fromLTRB(
                          20,
                          14,
                          0,
                          0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/portrait-white-man-isolated.jpg"),
                              radius: 25,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Hi, Ayush!',
                              style: TextStyle(
                                color: Pallete.usercolor,
                                fontSize: 32,
                                fontFamily: 'Saman',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 120),
                            Icon(
                              Icons.notifications_active,
                              color: Pallete.usercolor,
                              size: 30,
                            ),
                          ],
                        ),
                      ), //user welcome text
                      const SizedBox(
                        height: 30.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          child: const Text(
                            'Consult with our\nexperienced astrologers!',
                            style: TextStyle(
                              color: Pallete.mainbgcolor,
                              fontSize: 28,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                    ]),
                StickyHeader(
                  header: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 8, 25, 21),
                    child: Container(
                        height: 55,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.334),
                              style: BorderStyle.solid),
                          boxShadow: const [
                            BoxShadow(
                              color: Pallete.txt3color,
                              blurRadius: 8,
                              offset: Offset(0, 3),
                              spreadRadius: 0,
                            )
                          ],
                        ), //
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Search for astrologist',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                width: 70,
                              ),
                              Icon(
                                Icons.format_list_bulleted_outlined,
                                color: Pallete.mainbgcolor,
                                size: 32,
                              ),
                            ],
                          ),
                        )), //Search bar
                  ), //Searchbar
                  content: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 2,
                      ),
                      CustomContainer(
                          onTap: () {},
                          text1: "Why Astrologist ?",
                          imgtext: "assets/pngwing.com (1).png",
                          fntsize: 25),
                      SizedBox(height: 15),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Our Astrologist',
                            style: TextStyle(
                              color: Pallete.mainbgcolor,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ), //Start Crafting
                      const SizedBox(
                        height: 10,
                      ),
                      AstroCarousel(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            'Today\'s Horoscope',
                            style: TextStyle(
                              color: Pallete.mainbgcolor,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Horoscope(),
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
