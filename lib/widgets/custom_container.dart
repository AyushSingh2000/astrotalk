import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {required this.onTap,
      required this.text1,
      required this.imgtext,
      required this.fntsize,
      Key? key})
      : super(key: key);
  VoidCallback onTap;
  String text1;
  String imgtext;
  double fntsize;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Stack(
            children: <Widget>[
              Container(
                width: MediaQuery.sizeOf(context).width / 0.2,
                height: 180,
                decoration: BoxDecoration(
                  color: Pallete.mainbgcolor,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      right: 180,
                      top: -50,
                      child: Container(
                        height: 300,
                        width: 300,
                        child: Image.asset(
                          imgtext,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 133,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              text1,
                              style: TextStyle(
                                color: Colors.orange.shade400,
                                fontSize: fntsize,
                                fontFamily: 'Saman',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 140,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Lorem Ipsum dolor \nsit amet, con setetur",
                              style: TextStyle(
                                color: Colors.orange.shade200,
                                fontSize: 17,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 134,
                        left: 245,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange.shade400,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              'Read More',
                              style: TextStyle(
                                color: Pallete.mainbgcolor,
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
