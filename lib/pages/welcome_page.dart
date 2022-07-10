// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food/pages/backgroung_images.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.red,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SizedBox(
          height: 60,
          width: width * 0.8,
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Text(
              'Get Started',
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
        ),
        body: Stack(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            BackgroundImages(height: height),
            Padding(
              padding: EdgeInsets.only(top: 40, left: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 73,
                      width: 73,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      //  padding: EdgeInsets.symmetric(vertical: 10),
                      child: Image(
                        image: AssetImage(
                            'assets/images/Bella Olonje logo 111 1.png'),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Food for',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Everyone',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ],
        ));
  }
}
